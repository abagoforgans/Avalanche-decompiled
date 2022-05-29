contract main {




// =====================  Runtime code  =====================


#
#  - sub_183eaef7(?)
#  - sub_9835c3b6(?)
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
        if stor0[idx].field_0 != msg.sender:
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
        if stor0[idx].field_0 != msg.sender:
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
        if stor0[idx].field_0 != msg.sender:
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
        if stor0[idx].field_0 != msg.sender:
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

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        sub_68bb600b = arg1
        sub_cb6adbe9 = arg2
        sub_8796f547 = arg3
        sub_5f0b2083 = arg4
        if arg1 > !arg2:
            revert with 'NH{q', 17
        if arg1 + arg2 > !arg3:
            revert with 'NH{q', 17
        if arg1 + arg2 + arg3 > !arg4:
            revert with 'NH{q', 17
        stor9 = arg1 + arg2 + arg3 + arg4
    revert with 0, 'O'
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'OZ'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0, 'OA'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
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
        if stor0[idx].field_0 != msg.sender:
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

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
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
        if stor0[idx].field_0 != msg.sender:
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
                revert with 'NH{q', 17
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
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'R0'
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
                stor10.length++
                mem[0] = 10
                stor10[stor10.length].field_0 = address(cd[((32 * idx) + arg1 + 36)])
                stor10[stor10.length].field_256 = mem[_49 + 44 len 20]
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
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = ext_call.return_data[0]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _9
    mem[mem[64] + 96 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + mem[64] + 96] = 0
    return ext_call.return_data[0], Array(len=_9, data=mem[mem[64] + 96 len ceil32(_9)])
}

function sub_de5ee35a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    call address(arg3).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(arg3) == ext_call.return_data[12 len 20]:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    if address(arg3) == ext_call.return_data[12 len 20]:
        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], msg.sender, 128, 0
    else:
        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(msg.sender), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if arg2:
        s = arg2
        idx = mem[96]
        while idx:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s <= idx:
                _45 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
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
        while idx:
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] <= idx:
                _46 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
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
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _192 = mem[_184]
                require mem[_184] == mem[_184 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_192))
                staticcall address(_192).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_220]
                require mem[_220] == mem[_220 + 12 len 20]
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
                _244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _248 = mem[_244]
                require mem[_244] == mem[_244 + 12 len 20]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_248))
                staticcall address(_248).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == mem[_260 + 12 len 20]
                if mem[_260 + 12 len 20]:
                    require ext_code.size(address(_224))
                    staticcall address(_224).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _280 = mem[_276]
                    require mem[_276] == mem[_276 + 18 len 14]
                    _284 = mem[_276 + 32]
                    require mem[_276 + 32] == mem[_276 + 50 len 14]
                    require mem[_276 + 64] == mem[_276 + 92 len 4]
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_224))
                    staticcall address(_224).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_300] == mem[_300 + 12 len 20]
                    if mem[_300 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _280)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                    else:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        require ext_code.size(address(_224))
                        staticcall address(_224).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_324] == mem[_324 + 12 len 20]
                        if mem[_324 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = Mask(112, 0, _284)
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _180 = mem[64]
            mem[mem[64]] = 64
            _188 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _344 = mem[(32 * ('cd', 68).length) + 128]
            mem[_180 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
            mem[_180 + (32 * _188) + 128 len 32 * _344] = mem[(32 * ('cd', 68).length) + 160 len 32 * _344]
            return memory
              from mem[64]
               len _180 + (32 * _188) + (32 * _344) + -mem[64] + 128
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_185]
            require mem[_185] == mem[_185 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_193))
            staticcall address(_193).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_221]
            require mem[_221] == mem[_221 + 12 len 20]
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
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _249 = mem[_245]
            require mem[_245] == mem[_245 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_249))
            staticcall address(_249).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == mem[_261 + 12 len 20]
            if mem[_261 + 12 len 20]:
                require ext_code.size(address(_225))
                staticcall address(_225).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _281 = mem[_277]
                require mem[_277] == mem[_277 + 18 len 14]
                _285 = mem[_277 + 32]
                require mem[_277 + 32] == mem[_277 + 50 len 14]
                require mem[_277 + 64] == mem[_277 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_225))
                staticcall address(_225).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_301] == mem[_301 + 12 len 20]
                if mem[_301 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _281)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_225))
                    staticcall address(_225).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _325 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_325] == mem[_325 + 12 len 20]
                    if mem[_325 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _285)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _181 = mem[64]
        mem[mem[64]] = 64
        _189 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _345 = mem[(32 * ('cd', 68).length) + 128]
        mem[_181 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_181 + (32 * _189) + 128 len 32 * _345] = mem[(32 * ('cd', 68).length) + 160 len 32 * _345]
        return memory
          from mem[64]
           len _181 + (32 * _189) + (32 * _345) + -mem[64] + 128
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
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _194 = mem[_186]
            require mem[_186] == mem[_186 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_194))
            staticcall address(_194).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_222]
            require mem[_222] == mem[_222 + 12 len 20]
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
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _250 = mem[_246]
            require mem[_246] == mem[_246 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_250))
            staticcall address(_250).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_262] == mem[_262 + 12 len 20]
            if mem[_262 + 12 len 20]:
                require ext_code.size(address(_226))
                staticcall address(_226).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _282 = mem[_278]
                require mem[_278] == mem[_278 + 18 len 14]
                _286 = mem[_278 + 32]
                require mem[_278 + 32] == mem[_278 + 50 len 14]
                require mem[_278 + 64] == mem[_278 + 92 len 4]
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_226))
                staticcall address(_226).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_302] == mem[_302 + 12 len 20]
                if mem[_302 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _282)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
                else:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    require ext_code.size(address(_226))
                    staticcall address(_226).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_326] == mem[_326 + 12 len 20]
                    if mem[_326 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = Mask(112, 0, _286)
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _182 = mem[64]
        mem[mem[64]] = 64
        _190 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _346 = mem[(32 * ('cd', 68).length) + 128]
        mem[_182 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
        mem[_182 + (32 * _190) + 128 len 32 * _346] = mem[(32 * ('cd', 68).length) + 160 len 32 * _346]
        return memory
          from mem[64]
           len _182 + (32 * _190) + (32 * _346) + -mem[64] + 128
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_187]
        require mem[_187] == mem[_187 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_195))
        staticcall address(_195).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_223]
        require mem[_223] == mem[_223 + 12 len 20]
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
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _251 = mem[_247]
        require mem[_247] == mem[_247 + 12 len 20]
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(_251))
        staticcall address(_251).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_263] == mem[_263 + 12 len 20]
        if mem[_263 + 12 len 20]:
            require ext_code.size(address(_227))
            staticcall address(_227).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _283 = mem[_279]
            require mem[_279] == mem[_279 + 18 len 14]
            _287 = mem[_279 + 32]
            require mem[_279 + 32] == mem[_279 + 50 len 14]
            require mem[_279 + 64] == mem[_279 + 92 len 4]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(_227))
            staticcall address(_227).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303 + 12 len 20]
            if mem[_303 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(112, 0, _283)
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
            else:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                require ext_code.size(address(_227))
                staticcall address(_227).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_327] == mem[_327 + 12 len 20]
                if mem[_327 + 12 len 20] == address(cd[((32 * idx) + cd[68] + 36)]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = Mask(112, 0, _287)
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _183 = mem[64]
    mem[mem[64]] = 64
    _191 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _347 = mem[(32 * ('cd', 68).length) + 128]
    mem[_183 + (32 * mem[96]) + 96] = mem[(32 * ('cd', 68).length) + 128]
    mem[_183 + (32 * _191) + 128 len 32 * _347] = mem[(32 * ('cd', 68).length) + 160 len 32 * _347]
    return memory
      from mem[64]
       len _183 + (32 * _191) + (32 * _347) + -mem[64] + 128
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
    else:
        if ('cd', 4).length * ('cd', 36).length and ('cd', 68).length > -1 / ('cd', 4).length * ('cd', 36).length:
            revert with 'NH{q', 17
        else:
            if ('cd', 4).length * ('cd', 36).length * ('cd', 68).length > test266151307():
                revert with 'NH{q', 65
            else:
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
                            else:
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if ('cd', 68).length > test266151307():
                                    revert with 'NH{q', 65
                                else:
                                    _760 = mem[64]
                                    mem[mem[64]] = ('cd', 68).length
                                    if not ('cd', 68).length:
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            _761 = mem[64] + (32 * ('cd', 68).length) + 32
                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                            mem[64] = _761 + (32 * ('cd', 68).length) + 32
                                            if not ('cd', 68).length:
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1297 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1315 = mem[_1297]
                                                        require mem[_1297] == mem[_1297 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            require ext_code.size(address(_1315))
                                                            staticcall address(_1315).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1355 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1360 = mem[_1355]
                                                                require mem[_1355] == mem[_1355 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_761]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _761 + 32] = 0
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1401 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1429 = mem[_1401]
                                                                            require mem[_1401] == mem[_1401 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_1429))
                                                                                staticcall address(_1429).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1500 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1500] == mem[_1500 + 12 len 20]
                                                                                    if not mem[_1500 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(address(_1360))
                                                                                        staticcall address(_1360).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1555 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1578 = mem[_1555]
                                                                                            require mem[_1555] == mem[_1555 + 18 len 14]
                                                                                            _1590 = mem[_1555 + 32]
                                                                                            require mem[_1555 + 32] == mem[_1555 + 50 len 14]
                                                                                            require mem[_1555 + 64] == mem[_1555 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_1360))
                                                                                                staticcall address(_1360).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1634 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1634] == mem[_1634 + 12 len 20]
                                                                                                    if mem[_1634 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_1360))
                                                                                                            staticcall address(_1360).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1708 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1708] == mem[_1708 + 12 len 20]
                                                                                                                if mem[_1708 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1590)
                                                                                                                        if t >= mem[_761]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _761 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1578)
                                                                                                            if t >= mem[_761]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _761 + 32] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1825 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1825:
                                                    _1829 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1829] = idx
                                                    mem[_1829 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1829 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_761]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1829 + 96] = mem[(32 * t) + _761 + 32]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1829
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                            else:
                                                mem[_761 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1299 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1318 = mem[_1299]
                                                        require mem[_1299] == mem[_1299 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            require ext_code.size(address(_1318))
                                                            staticcall address(_1318).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1356 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1361 = mem[_1356]
                                                                require mem[_1356] == mem[_1356 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_761]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _761 + 32] = 0
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1402 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1430 = mem[_1402]
                                                                            require mem[_1402] == mem[_1402 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_1430))
                                                                                staticcall address(_1430).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1501 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1501] == mem[_1501 + 12 len 20]
                                                                                    if not mem[_1501 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(address(_1361))
                                                                                        staticcall address(_1361).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1556 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1579 = mem[_1556]
                                                                                            require mem[_1556] == mem[_1556 + 18 len 14]
                                                                                            _1591 = mem[_1556 + 32]
                                                                                            require mem[_1556 + 32] == mem[_1556 + 50 len 14]
                                                                                            require mem[_1556 + 64] == mem[_1556 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_1361))
                                                                                                staticcall address(_1361).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1635 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1635] == mem[_1635 + 12 len 20]
                                                                                                    if mem[_1635 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_1361))
                                                                                                            staticcall address(_1361).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1709 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1709] == mem[_1709 + 12 len 20]
                                                                                                                if mem[_1709 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1591)
                                                                                                                        if t >= mem[_761]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _761 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1579)
                                                                                                            if t >= mem[_761]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _761 + 32] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1826 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1826:
                                                    _1831 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1831] = idx
                                                    mem[_1831 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1831 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_761]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1831 + 96] = mem[(32 * t) + _761 + 32]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1831
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                    else:
                                        mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                            mem[64] = _760 + (64 * ('cd', 68).length) + 64
                                            if not ('cd', 68).length:
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1301 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1321 = mem[_1301]
                                                        require mem[_1301] == mem[_1301 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            require ext_code.size(address(_1321))
                                                            staticcall address(_1321).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1357 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1362 = mem[_1357]
                                                                require mem[_1357] == mem[_1357 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 0
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1403 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1431 = mem[_1403]
                                                                            require mem[_1403] == mem[_1403 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_1431))
                                                                                staticcall address(_1431).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1502 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1502] == mem[_1502 + 12 len 20]
                                                                                    if not mem[_1502 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(address(_1362))
                                                                                        staticcall address(_1362).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1557 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1580 = mem[_1557]
                                                                                            require mem[_1557] == mem[_1557 + 18 len 14]
                                                                                            _1592 = mem[_1557 + 32]
                                                                                            require mem[_1557 + 32] == mem[_1557 + 50 len 14]
                                                                                            require mem[_1557 + 64] == mem[_1557 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_1362))
                                                                                                staticcall address(_1362).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1636 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1636] == mem[_1636 + 12 len 20]
                                                                                                    if mem[_1636 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_1362))
                                                                                                            staticcall address(_1362).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1710 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1710] == mem[_1710 + 12 len 20]
                                                                                                                if mem[_1710 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1592)
                                                                                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1580)
                                                                                                            if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1827 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1827:
                                                    _1833 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1833] = idx
                                                    mem[_1833 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1833 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1833 + 96] = mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1833
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                                            else:
                                                mem[_760 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                t = 0
                                                while t < ('cd', 68).length:
                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1303 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _1324 = mem[_1303]
                                                        require mem[_1303] == mem[_1303 + 12 len 20]
                                                        if t >= ('cd', 68).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                            require ext_code.size(address(_1324))
                                                            staticcall address(_1324).getPair(address arg1, address arg2) with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _1358 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _1363 = mem[_1358]
                                                                require mem[_1358] == mem[_1358 + 12 len 20]
                                                                if t >= mem[_760]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * t) + _760 + 32] = 0
                                                                    if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 0
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _1404 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _1432 = mem[_1404]
                                                                            require mem[_1404] == mem[_1404 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_1432))
                                                                                staticcall address(_1432).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _1503 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_1503] == mem[_1503 + 12 len 20]
                                                                                    if not mem[_1503 + 12 len 20]:
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            continue 
                                                                                    else:
                                                                                        require ext_code.size(address(_1363))
                                                                                        staticcall address(_1363).getReserves() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _1558 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 96
                                                                                            _1581 = mem[_1558]
                                                                                            require mem[_1558] == mem[_1558 + 18 len 14]
                                                                                            _1593 = mem[_1558 + 32]
                                                                                            require mem[_1558 + 32] == mem[_1558 + 50 len 14]
                                                                                            require mem[_1558 + 64] == mem[_1558 + 92 len 4]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_1363))
                                                                                                staticcall address(_1363).token0() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1637 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1637] == mem[_1637 + 12 len 20]
                                                                                                    if mem[_1637 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_1363))
                                                                                                            staticcall address(_1363).token1() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1711 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1711] == mem[_1711 + 12 len 20]
                                                                                                                if mem[_1711 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_760]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _760 + 32] = Mask(112, 0, _1593)
                                                                                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                    else:
                                                                                                        if t >= mem[_760]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            mem[(32 * t) + _760 + 32] = Mask(112, 0, _1581)
                                                                                                            if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                _1828 = mem[_760]
                                                t = 0
                                                u = 0
                                                while t < _1828:
                                                    _1835 = mem[64]
                                                    mem[64] = mem[64] + 128
                                                    mem[_1835] = idx
                                                    mem[_1835 + 32] = s
                                                    if t >= mem[_760]:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        mem[_1835 + 64] = mem[(32 * t) + _760 + 32]
                                                        if t >= mem[_760 + (32 * ('cd', 68).length) + 32]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_1835 + 96] = mem[(32 * t) + _760 + (32 * ('cd', 68).length) + 64]
                                                            if u == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u >= mem[96]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[(32 * u) + 128] = _1835
                                                                    if t == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        t = t + 1
                                                                        u = u + 1
                                                                        continue 
                                                if s == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    s = s + 1
                                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        else:
                            idx = idx + 1
                            continue 
                    _370 = mem[64]
                    mem[mem[64]] = 32
                    _372 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 64
                    while s < _372:
                        _737 = mem[t]
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_737 + 32]
                        mem[u + 64] = mem[_737 + 64]
                        mem[u + 96] = mem[_737 + 96]
                        s = s + 1
                        t = t + 32
                        u = u + 128
                        continue 
                    return memory
                      from mem[64]
                       len _370 + (128 * _372) + -mem[64] + 64
                else:
                    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 256
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 128] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 160] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 192] = 0
                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 224] = 0
                    mem[var36002] = var36001
                    if var36003 - 1:
                        mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 384
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 256] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 288] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 320] = 0
                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 352] = 0
                        mem[var40002] = var40001
                        if var40003 - 1:
                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 512
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 384] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 416] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 448] = 0
                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 480] = 0
                            mem[var44002] = var44001
                            if var44003 - 1:
                                mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 640
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 512] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 544] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 576] = 0
                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 608] = 0
                                mem[var48002] = var48001
                                if var48003 - 1:
                                    mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 768
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 640] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 672] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 704] = 0
                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 736] = 0
                                    mem[var52002] = var52001
                                    if var52003 - 1:
                                        mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 896
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 768] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 800] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 832] = 0
                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 864] = 0
                                        mem[var56002] = var56001
                                        if var56003 - 1:
                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1024
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 896] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 928] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 960] = 0
                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 992] = 0
                                            mem[var60002] = var60001
                                            if var60003 - 1:
                                                mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1024] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1056] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1088] = 0
                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1120] = 0
                                                mem[var64002] = var64001
                                                if var64003 - 1:
                                                    if var68003 - 1:
                                                        # nil
                                                    else:
                                                        if var77001 >= ('cd', 36).length:
                                                            # nil
                                                        else:
                                                            # nil
                                                else:
                                                    idx = 0
                                                    while idx < ('cd', 36).length:
                                                        if var100001 >= ('cd', 4).length:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                continue 
                                                        else:
                                                            require cd[((32 * var100001) + cd[4] + 36)] == address(cd[((32 * var100001) + cd[4] + 36)])
                                                            if idx >= ('cd', 36).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152] = ('cd', 68).length
                                                                    if not ('cd', 68).length:
                                                                        if ('cd', 68).length > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184] = ('cd', 68).length
                                                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (64 * ('cd', 68).length) + 1216
                                                                            if not ('cd', 68).length:
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10226 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10248 = mem[_10226]
                                                                                        require mem[_10226] == mem[_10226 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_10248))
                                                                                            staticcall address(_10248).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10283 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10288 = mem[_10283]
                                                                                                require mem[_10283] == mem[_10283 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10340 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10366 = mem[_10340]
                                                                                                            require mem[_10340] == mem[_10340 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_10366))
                                                                                                                staticcall address(_10366).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10432 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10432] == mem[_10432 + 12 len 20]
                                                                                                                    if not mem[_10432 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(_10288))
                                                                                                                        staticcall address(_10288).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10488 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10510 = mem[_10488]
                                                                                                                            require mem[_10488] == mem[_10488 + 18 len 14]
                                                                                                                            _10520 = mem[_10488 + 32]
                                                                                                                            require mem[_10488 + 32] == mem[_10488 + 50 len 14]
                                                                                                                            require mem[_10488 + 64] == mem[_10488 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_10288))
                                                                                                                                staticcall address(_10288).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10564 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10564] == mem[_10564 + 12 len 20]
                                                                                                                                    if mem[_10564 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            require ext_code.size(address(_10288))
                                                                                                                                            staticcall address(_10288).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10638 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10638] == mem[_10638 + 12 len 20]
                                                                                                                                                if mem[_10638 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10520)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10510)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                            else:
                                                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10228 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10251 = mem[_10228]
                                                                                        require mem[_10228] == mem[_10228 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_10251))
                                                                                            staticcall address(_10251).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10284 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10289 = mem[_10284]
                                                                                                require mem[_10284] == mem[_10284 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10341 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10367 = mem[_10341]
                                                                                                            require mem[_10341] == mem[_10341 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_10367))
                                                                                                                staticcall address(_10367).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10433 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10433] == mem[_10433 + 12 len 20]
                                                                                                                    if not mem[_10433 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(_10289))
                                                                                                                        staticcall address(_10289).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10489 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10511 = mem[_10489]
                                                                                                                            require mem[_10489] == mem[_10489 + 18 len 14]
                                                                                                                            _10521 = mem[_10489 + 32]
                                                                                                                            require mem[_10489 + 32] == mem[_10489 + 50 len 14]
                                                                                                                            require mem[_10489 + 64] == mem[_10489 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_10289))
                                                                                                                                staticcall address(_10289).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10565 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10565] == mem[_10565 + 12 len 20]
                                                                                                                                    if mem[_10565 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            require ext_code.size(address(_10289))
                                                                                                                                            staticcall address(_10289).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10639 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10639] == mem[_10639 + 12 len 20]
                                                                                                                                                if mem[_10639 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10521)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10511)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                    else:
                                                                        mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        if ('cd', 68).length > test266151307():
                                                                            revert with 'NH{q', 65
                                                                        else:
                                                                            mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184] = ('cd', 68).length
                                                                            mem[64] = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (64 * ('cd', 68).length) + 1216
                                                                            if not ('cd', 68).length:
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10230 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10254 = mem[_10230]
                                                                                        require mem[_10230] == mem[_10230 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_10254))
                                                                                            staticcall address(_10254).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10285 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10290 = mem[_10285]
                                                                                                require mem[_10285] == mem[_10285 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10342 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10368 = mem[_10342]
                                                                                                            require mem[_10342] == mem[_10342 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_10368))
                                                                                                                staticcall address(_10368).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10434 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10434] == mem[_10434 + 12 len 20]
                                                                                                                    if not mem[_10434 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(_10290))
                                                                                                                        staticcall address(_10290).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10490 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10512 = mem[_10490]
                                                                                                                            require mem[_10490] == mem[_10490 + 18 len 14]
                                                                                                                            _10522 = mem[_10490 + 32]
                                                                                                                            require mem[_10490 + 32] == mem[_10490 + 50 len 14]
                                                                                                                            require mem[_10490 + 64] == mem[_10490 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_10290))
                                                                                                                                staticcall address(_10290).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10566 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10566] == mem[_10566 + 12 len 20]
                                                                                                                                    if mem[_10566 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            require ext_code.size(address(_10290))
                                                                                                                                            staticcall address(_10290).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10640 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10640] == mem[_10640 + 12 len 20]
                                                                                                                                                if mem[_10640 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10522)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10512)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                                            else:
                                                                                mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                                s = 0
                                                                                while s < ('cd', 68).length:
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _10232 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _10257 = mem[_10232]
                                                                                        require mem[_10232] == mem[_10232 + 12 len 20]
                                                                                        if s >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_10257))
                                                                                            staticcall address(_10257).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _10286 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _10291 = mem[_10286]
                                                                                                require mem[_10286] == mem[_10286 + 12 len 20]
                                                                                                if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = 0
                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 0
                                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _10343 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _10369 = mem[_10343]
                                                                                                            require mem[_10343] == mem[_10343 + 12 len 20]
                                                                                                            if s >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64] + 4] = address(cd[((32 * var100001) + cd[4] + 36)])
                                                                                                                mem[mem[64] + 36] = address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_10369))
                                                                                                                staticcall address(_10369).getPair(address arg1, address arg2) with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[((32 * var100001) + cd[4] + 36)]), address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _10435 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_10435] == mem[_10435 + 12 len 20]
                                                                                                                    if not mem[_10435 + 12 len 20]:
                                                                                                                        if s == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            s = s + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(_10291))
                                                                                                                        staticcall address(_10291).getReserves() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _10491 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 96
                                                                                                                            _10513 = mem[_10491]
                                                                                                                            require mem[_10491] == mem[_10491 + 18 len 14]
                                                                                                                            _10523 = mem[_10491 + 32]
                                                                                                                            require mem[_10491 + 32] == mem[_10491 + 50 len 14]
                                                                                                                            require mem[_10491 + 64] == mem[_10491 + 92 len 4]
                                                                                                                            if s >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_10291))
                                                                                                                                staticcall address(_10291).token0() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _10567 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_10567] == mem[_10567 + 12 len 20]
                                                                                                                                    if mem[_10567 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                        if s >= ('cd', 68).length:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            require cd[((32 * s) + cd[68] + 36)] == address(cd[((32 * s) + cd[68] + 36)])
                                                                                                                                            require ext_code.size(address(_10291))
                                                                                                                                            staticcall address(_10291).token1() with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _10641 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_10641] == mem[_10641 + 12 len 20]
                                                                                                                                                if mem[_10641 + 12 len 20] != address(cd[((32 * s) + cd[68] + 36)]):
                                                                                                                                                    if s == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        s = s + 1
                                                                                                                                                        continue 
                                                                                                                                                else:
                                                                                                                                                    if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10523)
                                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                                        else:
                                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                            if s == -1:
                                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                                            else:
                                                                                                                                                                s = s + 1
                                                                                                                                                                continue 
                                                                                                                                    else:
                                                                                                                                        if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = Mask(112, 0, _10513)
                                                                                                                                            if s >= mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1184]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * s) + (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + (32 * ('cd', 68).length) + 1216] = 1
                                                                                                                                                if s == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    s = s + 1
                                                                                                                                                    continue 
                                                                                # nil
                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1152] = 32
                                                    mem[(32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1184] = ('cd', 4).length * ('cd', 36).length * ('cd', 68).length
                                                    s = 0
                                                    t = 128
                                                    u = (32 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + 1216
                                                    while s < mem[96]:
                                                        _9642 = mem[t]
                                                        mem[u] = mem[mem[t]]
                                                        mem[u + 32] = mem[_9642 + 32]
                                                        mem[u + 64] = mem[_9642 + 64]
                                                        mem[u + 96] = mem[_9642 + 96]
                                                        s = s + 1
                                                        t = t + 32
                                                        u = u + 128
                                                        continue 
                                                    return memory
                                                      from mem[64]
                                                       len (162 * ('cd', 4).length * ('cd', 36).length * ('cd', 68).length) + -mem[64] + 1216
                                            else:
                                                idx = 0
                                                while idx < ('cd', 36).length:
                                                    s = 0
                                                    while s < ('cd', 4).length:
                                                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                        if idx >= ('cd', 36).length:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                _8572 = mem[64]
                                                                mem[mem[64]] = ('cd', 68).length
                                                                if not ('cd', 68).length:
                                                                    if ('cd', 68).length > test266151307():
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        _8573 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                        mem[64] = _8573 + (32 * ('cd', 68).length) + 32
                                                                        if not ('cd', 68).length:
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9110 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9132 = mem[_9110]
                                                                                    require mem[_9110] == mem[_9110 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_9132))
                                                                                        staticcall address(_9132).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9167 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9172 = mem[_9167]
                                                                                            require mem[_9167] == mem[_9167 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8573]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8573 + 32] = 0
                                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9224 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9250 = mem[_9224]
                                                                                                        require mem[_9224] == mem[_9224 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_9250))
                                                                                                            staticcall address(_9250).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9316 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9316] == mem[_9316 + 12 len 20]
                                                                                                                if not mem[_9316 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_9172))
                                                                                                                    staticcall address(_9172).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9372 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9394 = mem[_9372]
                                                                                                                        require mem[_9372] == mem[_9372 + 18 len 14]
                                                                                                                        _9404 = mem[_9372 + 32]
                                                                                                                        require mem[_9372 + 32] == mem[_9372 + 50 len 14]
                                                                                                                        require mem[_9372 + 64] == mem[_9372 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_9172))
                                                                                                                            staticcall address(_9172).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9448 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9448] == mem[_9448 + 12 len 20]
                                                                                                                                if mem[_9448 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        require ext_code.size(address(_9172))
                                                                                                                                        staticcall address(_9172).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9522 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9522] == mem[_9522 + 12 len 20]
                                                                                                                                            if mem[_9522 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9404)
                                                                                                                                                    if t >= mem[_8573]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9394)
                                                                                                                                        if t >= mem[_8573]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9637 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9637:
                                                                                _9647 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9647] = idx
                                                                                mem[_9647 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9647 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8573]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9647 + 96] = mem[(32 * t) + _8573 + 32]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9647
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_8573 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9112 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9135 = mem[_9112]
                                                                                    require mem[_9112] == mem[_9112 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_9135))
                                                                                        staticcall address(_9135).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9168 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9173 = mem[_9168]
                                                                                            require mem[_9168] == mem[_9168 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8573]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8573 + 32] = 0
                                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9225 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9251 = mem[_9225]
                                                                                                        require mem[_9225] == mem[_9225 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_9251))
                                                                                                            staticcall address(_9251).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9317 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9317] == mem[_9317 + 12 len 20]
                                                                                                                if not mem[_9317 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_9173))
                                                                                                                    staticcall address(_9173).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9373 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9395 = mem[_9373]
                                                                                                                        require mem[_9373] == mem[_9373 + 18 len 14]
                                                                                                                        _9405 = mem[_9373 + 32]
                                                                                                                        require mem[_9373 + 32] == mem[_9373 + 50 len 14]
                                                                                                                        require mem[_9373 + 64] == mem[_9373 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_9173))
                                                                                                                            staticcall address(_9173).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9449 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9449] == mem[_9449 + 12 len 20]
                                                                                                                                if mem[_9449 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        require ext_code.size(address(_9173))
                                                                                                                                        staticcall address(_9173).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9523 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9523] == mem[_9523 + 12 len 20]
                                                                                                                                            if mem[_9523 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9405)
                                                                                                                                                    if t >= mem[_8573]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9395)
                                                                                                                                        if t >= mem[_8573]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8573 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9638 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9638:
                                                                                _9649 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9649] = idx
                                                                                mem[_9649 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9649 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8573]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9649 + 96] = mem[(32 * t) + _8573 + 32]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9649
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                else:
                                                                    mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    if ('cd', 68).length > test266151307():
                                                                        revert with 'NH{q', 65
                                                                    else:
                                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                        mem[64] = _8572 + (64 * ('cd', 68).length) + 64
                                                                        if not ('cd', 68).length:
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9114 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9138 = mem[_9114]
                                                                                    require mem[_9114] == mem[_9114 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_9138))
                                                                                        staticcall address(_9138).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9169 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9174 = mem[_9169]
                                                                                            require mem[_9169] == mem[_9169 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9226 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9252 = mem[_9226]
                                                                                                        require mem[_9226] == mem[_9226 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_9252))
                                                                                                            staticcall address(_9252).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9318 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9318] == mem[_9318 + 12 len 20]
                                                                                                                if not mem[_9318 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_9174))
                                                                                                                    staticcall address(_9174).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9374 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9396 = mem[_9374]
                                                                                                                        require mem[_9374] == mem[_9374 + 18 len 14]
                                                                                                                        _9406 = mem[_9374 + 32]
                                                                                                                        require mem[_9374 + 32] == mem[_9374 + 50 len 14]
                                                                                                                        require mem[_9374 + 64] == mem[_9374 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_9174))
                                                                                                                            staticcall address(_9174).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9450 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9450] == mem[_9450 + 12 len 20]
                                                                                                                                if mem[_9450 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        require ext_code.size(address(_9174))
                                                                                                                                        staticcall address(_9174).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9524 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9524] == mem[_9524 + 12 len 20]
                                                                                                                                            if mem[_9524 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9406)
                                                                                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9396)
                                                                                                                                        if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9639 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9639:
                                                                                _9651 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9651] = idx
                                                                                mem[_9651 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9651 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9651 + 96] = mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9651
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                                        else:
                                                                            mem[_8572 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                            t = 0
                                                                            while t < ('cd', 68).length:
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _9116 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _9141 = mem[_9116]
                                                                                    require mem[_9116] == mem[_9116 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_9141))
                                                                                        staticcall address(_9141).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _9170 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _9175 = mem[_9170]
                                                                                            require mem[_9170] == mem[_9170 + 12 len 20]
                                                                                            if t >= mem[_8572]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _8572 + 32] = 0
                                                                                                if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _9227 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _9253 = mem[_9227]
                                                                                                        require mem[_9227] == mem[_9227 + 12 len 20]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_9253))
                                                                                                            staticcall address(_9253).getPair(address arg1, address arg2) with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _9319 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_9319] == mem[_9319 + 12 len 20]
                                                                                                                if not mem[_9319 + 12 len 20]:
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                                                                                else:
                                                                                                                    require ext_code.size(address(_9175))
                                                                                                                    staticcall address(_9175).getReserves() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _9375 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 96
                                                                                                                        _9397 = mem[_9375]
                                                                                                                        require mem[_9375] == mem[_9375 + 18 len 14]
                                                                                                                        _9407 = mem[_9375 + 32]
                                                                                                                        require mem[_9375 + 32] == mem[_9375 + 50 len 14]
                                                                                                                        require mem[_9375 + 64] == mem[_9375 + 92 len 4]
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_9175))
                                                                                                                            staticcall address(_9175).token0() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _9451 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_9451] == mem[_9451 + 12 len 20]
                                                                                                                                if mem[_9451 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                        require ext_code.size(address(_9175))
                                                                                                                                        staticcall address(_9175).token1() with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _9525 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_9525] == mem[_9525 + 12 len 20]
                                                                                                                                            if mem[_9525 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                                            else:
                                                                                                                                                if t >= mem[_8572]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9407)
                                                                                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                                    else:
                                                                                                                                                        mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                        if t == -1:
                                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                                        else:
                                                                                                                                                            t = t + 1
                                                                                                                                                            continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_8572]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _8572 + 32] = Mask(112, 0, _9397)
                                                                                                                                        if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                            _9640 = mem[_8572]
                                                                            t = 0
                                                                            u = 0
                                                                            while t < _9640:
                                                                                _9653 = mem[64]
                                                                                mem[64] = mem[64] + 128
                                                                                mem[_9653] = idx
                                                                                mem[_9653 + 32] = s
                                                                                if t >= mem[_8572]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_9653 + 64] = mem[(32 * t) + _8572 + 32]
                                                                                    if t >= mem[_8572 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[_9653 + 96] = mem[(32 * t) + _8572 + (32 * ('cd', 68).length) + 64]
                                                                                        if u == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if u >= mem[96]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * u) + 128] = _9653
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    u = u + 1
                                                                                                    continue 
                                                                            if s == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                s = s + 1
                                                                                continue 
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                                _7991 = mem[64]
                                                mem[mem[64]] = 32
                                                _7992 = mem[96]
                                                mem[mem[64] + 32] = mem[96]
                                                s = 0
                                                t = 128
                                                u = mem[64] + 64
                                                while s < _7992:
                                                    _8526 = mem[t]
                                                    mem[u] = mem[mem[t]]
                                                    mem[u + 32] = mem[_8526 + 32]
                                                    mem[u + 64] = mem[_8526 + 64]
                                                    mem[u + 96] = mem[_8526 + 96]
                                                    s = s + 1
                                                    t = t + 32
                                                    u = u + 128
                                                    continue 
                                                return memory
                                                  from mem[64]
                                                   len _7991 + (128 * _7992) + -mem[64] + 64
                                        else:
                                            idx = 0
                                            while idx < ('cd', 36).length:
                                                s = 0
                                                while s < ('cd', 4).length:
                                                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                    if idx >= ('cd', 36).length:
                                                        revert with 'NH{q', 50
                                                    else:
                                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            _7456 = mem[64]
                                                            mem[mem[64]] = ('cd', 68).length
                                                            if not ('cd', 68).length:
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    _7457 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                    mem[64] = _7457 + (32 * ('cd', 68).length) + 32
                                                                    if not ('cd', 68).length:
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7994 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8016 = mem[_7994]
                                                                                require mem[_7994] == mem[_7994 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_8016))
                                                                                    staticcall address(_8016).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8051 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8056 = mem[_8051]
                                                                                        require mem[_8051] == mem[_8051 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7457]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7457 + 32] = 0
                                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8108 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8134 = mem[_8108]
                                                                                                    require mem[_8108] == mem[_8108 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_8134))
                                                                                                        staticcall address(_8134).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8200 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8200] == mem[_8200 + 12 len 20]
                                                                                                            if not mem[_8200 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                require ext_code.size(address(_8056))
                                                                                                                staticcall address(_8056).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8256 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8278 = mem[_8256]
                                                                                                                    require mem[_8256] == mem[_8256 + 18 len 14]
                                                                                                                    _8288 = mem[_8256 + 32]
                                                                                                                    require mem[_8256 + 32] == mem[_8256 + 50 len 14]
                                                                                                                    require mem[_8256 + 64] == mem[_8256 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_8056))
                                                                                                                        staticcall address(_8056).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8332 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8332] == mem[_8332 + 12 len 20]
                                                                                                                            if mem[_8332 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    require ext_code.size(address(_8056))
                                                                                                                                    staticcall address(_8056).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8406 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8406] == mem[_8406 + 12 len 20]
                                                                                                                                        if mem[_8406 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8288)
                                                                                                                                                if t >= mem[_7457]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8278)
                                                                                                                                    if t >= mem[_7457]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8521 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8521:
                                                                            _8531 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8531] = idx
                                                                            mem[_8531 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8531 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7457]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8531 + 96] = mem[(32 * t) + _7457 + 32]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8531
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        mem[_7457 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7996 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8019 = mem[_7996]
                                                                                require mem[_7996] == mem[_7996 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_8019))
                                                                                    staticcall address(_8019).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8052 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8057 = mem[_8052]
                                                                                        require mem[_8052] == mem[_8052 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7457]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7457 + 32] = 0
                                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8109 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8135 = mem[_8109]
                                                                                                    require mem[_8109] == mem[_8109 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_8135))
                                                                                                        staticcall address(_8135).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8201 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8201] == mem[_8201 + 12 len 20]
                                                                                                            if not mem[_8201 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                require ext_code.size(address(_8057))
                                                                                                                staticcall address(_8057).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8257 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8279 = mem[_8257]
                                                                                                                    require mem[_8257] == mem[_8257 + 18 len 14]
                                                                                                                    _8289 = mem[_8257 + 32]
                                                                                                                    require mem[_8257 + 32] == mem[_8257 + 50 len 14]
                                                                                                                    require mem[_8257 + 64] == mem[_8257 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_8057))
                                                                                                                        staticcall address(_8057).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8333 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8333] == mem[_8333 + 12 len 20]
                                                                                                                            if mem[_8333 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    require ext_code.size(address(_8057))
                                                                                                                                    staticcall address(_8057).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8407 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8407] == mem[_8407 + 12 len 20]
                                                                                                                                        if mem[_8407 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8289)
                                                                                                                                                if t >= mem[_7457]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8279)
                                                                                                                                    if t >= mem[_7457]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7457 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8522 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8522:
                                                                            _8533 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8533] = idx
                                                                            mem[_8533 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8533 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7457]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8533 + 96] = mem[(32 * t) + _7457 + 32]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8533
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                            else:
                                                                mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                if ('cd', 68).length > test266151307():
                                                                    revert with 'NH{q', 65
                                                                else:
                                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                    mem[64] = _7456 + (64 * ('cd', 68).length) + 64
                                                                    if not ('cd', 68).length:
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _7998 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8022 = mem[_7998]
                                                                                require mem[_7998] == mem[_7998 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_8022))
                                                                                    staticcall address(_8022).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8053 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8058 = mem[_8053]
                                                                                        require mem[_8053] == mem[_8053 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8110 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8136 = mem[_8110]
                                                                                                    require mem[_8110] == mem[_8110 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_8136))
                                                                                                        staticcall address(_8136).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8202 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8202] == mem[_8202 + 12 len 20]
                                                                                                            if not mem[_8202 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                require ext_code.size(address(_8058))
                                                                                                                staticcall address(_8058).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8258 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8280 = mem[_8258]
                                                                                                                    require mem[_8258] == mem[_8258 + 18 len 14]
                                                                                                                    _8290 = mem[_8258 + 32]
                                                                                                                    require mem[_8258 + 32] == mem[_8258 + 50 len 14]
                                                                                                                    require mem[_8258 + 64] == mem[_8258 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_8058))
                                                                                                                        staticcall address(_8058).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8334 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8334] == mem[_8334 + 12 len 20]
                                                                                                                            if mem[_8334 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    require ext_code.size(address(_8058))
                                                                                                                                    staticcall address(_8058).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8408 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8408] == mem[_8408 + 12 len 20]
                                                                                                                                        if mem[_8408 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8290)
                                                                                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8280)
                                                                                                                                    if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8523 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8523:
                                                                            _8535 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8535] = idx
                                                                            mem[_8535 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8535 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8535 + 96] = mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8535
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                                    else:
                                                                        mem[_7456 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                        t = 0
                                                                        while t < ('cd', 68).length:
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _8000 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _8025 = mem[_8000]
                                                                                require mem[_8000] == mem[_8000 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_8025))
                                                                                    staticcall address(_8025).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _8054 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _8059 = mem[_8054]
                                                                                        require mem[_8054] == mem[_8054 + 12 len 20]
                                                                                        if t >= mem[_7456]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _7456 + 32] = 0
                                                                                            if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 0
                                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _8111 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _8137 = mem[_8111]
                                                                                                    require mem[_8111] == mem[_8111 + 12 len 20]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_8137))
                                                                                                        staticcall address(_8137).getPair(address arg1, address arg2) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _8203 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_8203] == mem[_8203 + 12 len 20]
                                                                                                            if not mem[_8203 + 12 len 20]:
                                                                                                                if t == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    t = t + 1
                                                                                                                    continue 
                                                                                                            else:
                                                                                                                require ext_code.size(address(_8059))
                                                                                                                staticcall address(_8059).getReserves() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _8259 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 96
                                                                                                                    _8281 = mem[_8259]
                                                                                                                    require mem[_8259] == mem[_8259 + 18 len 14]
                                                                                                                    _8291 = mem[_8259 + 32]
                                                                                                                    require mem[_8259 + 32] == mem[_8259 + 50 len 14]
                                                                                                                    require mem[_8259 + 64] == mem[_8259 + 92 len 4]
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_8059))
                                                                                                                        staticcall address(_8059).token0() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _8335 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_8335] == mem[_8335 + 12 len 20]
                                                                                                                            if mem[_8335 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t >= ('cd', 68).length:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                    require ext_code.size(address(_8059))
                                                                                                                                    staticcall address(_8059).token1() with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _8409 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_8409] == mem[_8409 + 12 len 20]
                                                                                                                                        if mem[_8409 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                                        else:
                                                                                                                                            if t >= mem[_7456]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8291)
                                                                                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                                else:
                                                                                                                                                    mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                    if t == -1:
                                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                                    else:
                                                                                                                                                        t = t + 1
                                                                                                                                                        continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_7456]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _7456 + 32] = Mask(112, 0, _8281)
                                                                                                                                    if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                        _8524 = mem[_7456]
                                                                        t = 0
                                                                        u = 0
                                                                        while t < _8524:
                                                                            _8537 = mem[64]
                                                                            mem[64] = mem[64] + 128
                                                                            mem[_8537] = idx
                                                                            mem[_8537 + 32] = s
                                                                            if t >= mem[_7456]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_8537 + 64] = mem[(32 * t) + _7456 + 32]
                                                                                if t >= mem[_7456 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[_8537 + 96] = mem[(32 * t) + _7456 + (32 * ('cd', 68).length) + 64]
                                                                                    if u == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if u >= mem[96]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * u) + 128] = _8537
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                u = u + 1
                                                                                                continue 
                                                                        if s == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            s = s + 1
                                                                            continue 
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                            _6875 = mem[64]
                                            mem[mem[64]] = 32
                                            _6876 = mem[96]
                                            mem[mem[64] + 32] = mem[96]
                                            s = 0
                                            t = 128
                                            u = mem[64] + 64
                                            while s < _6876:
                                                _7410 = mem[t]
                                                mem[u] = mem[mem[t]]
                                                mem[u + 32] = mem[_7410 + 32]
                                                mem[u + 64] = mem[_7410 + 64]
                                                mem[u + 96] = mem[_7410 + 96]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 128
                                                continue 
                                            return memory
                                              from mem[64]
                                               len _6875 + (128 * _6876) + -mem[64] + 64
                                    else:
                                        idx = 0
                                        while idx < ('cd', 36).length:
                                            s = 0
                                            while s < ('cd', 4).length:
                                                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                                if idx >= ('cd', 36).length:
                                                    revert with 'NH{q', 50
                                                else:
                                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        _6340 = mem[64]
                                                        mem[mem[64]] = ('cd', 68).length
                                                        if not ('cd', 68).length:
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                _6341 = mem[64] + (32 * ('cd', 68).length) + 32
                                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                mem[64] = _6341 + (32 * ('cd', 68).length) + 32
                                                                if not ('cd', 68).length:
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6878 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6900 = mem[_6878]
                                                                            require mem[_6878] == mem[_6878 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_6900))
                                                                                staticcall address(_6900).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6935 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6940 = mem[_6935]
                                                                                    require mem[_6935] == mem[_6935 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6341]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6341 + 32] = 0
                                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6992 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _7018 = mem[_6992]
                                                                                                require mem[_6992] == mem[_6992 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_7018))
                                                                                                    staticcall address(_7018).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7084 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7084] == mem[_7084 + 12 len 20]
                                                                                                        if not mem[_7084 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(address(_6940))
                                                                                                            staticcall address(_6940).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7140 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7162 = mem[_7140]
                                                                                                                require mem[_7140] == mem[_7140 + 18 len 14]
                                                                                                                _7172 = mem[_7140 + 32]
                                                                                                                require mem[_7140 + 32] == mem[_7140 + 50 len 14]
                                                                                                                require mem[_7140 + 64] == mem[_7140 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_6940))
                                                                                                                    staticcall address(_6940).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7216 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7216] == mem[_7216 + 12 len 20]
                                                                                                                        if mem[_7216 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_6940))
                                                                                                                                staticcall address(_6940).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7290 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7290] == mem[_7290 + 12 len 20]
                                                                                                                                    if mem[_7290 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7172)
                                                                                                                                            if t >= mem[_6341]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7162)
                                                                                                                                if t >= mem[_6341]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7405 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7405:
                                                                        _7415 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7415] = idx
                                                                        mem[_7415 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7415 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6341]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7415 + 96] = mem[(32 * t) + _6341 + 32]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7415
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                                else:
                                                                    mem[_6341 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6880 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6903 = mem[_6880]
                                                                            require mem[_6880] == mem[_6880 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_6903))
                                                                                staticcall address(_6903).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6936 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6941 = mem[_6936]
                                                                                    require mem[_6936] == mem[_6936 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6341]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6341 + 32] = 0
                                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6993 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _7019 = mem[_6993]
                                                                                                require mem[_6993] == mem[_6993 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_7019))
                                                                                                    staticcall address(_7019).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7085 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7085] == mem[_7085 + 12 len 20]
                                                                                                        if not mem[_7085 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(address(_6941))
                                                                                                            staticcall address(_6941).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7141 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7163 = mem[_7141]
                                                                                                                require mem[_7141] == mem[_7141 + 18 len 14]
                                                                                                                _7173 = mem[_7141 + 32]
                                                                                                                require mem[_7141 + 32] == mem[_7141 + 50 len 14]
                                                                                                                require mem[_7141 + 64] == mem[_7141 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_6941))
                                                                                                                    staticcall address(_6941).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7217 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7217] == mem[_7217 + 12 len 20]
                                                                                                                        if mem[_7217 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_6941))
                                                                                                                                staticcall address(_6941).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7291 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7291] == mem[_7291 + 12 len 20]
                                                                                                                                    if mem[_7291 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7173)
                                                                                                                                            if t >= mem[_6341]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7163)
                                                                                                                                if t >= mem[_6341]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6341 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7406 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7406:
                                                                        _7417 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7417] = idx
                                                                        mem[_7417 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7417 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6341]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7417 + 96] = mem[(32 * t) + _6341 + 32]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7417
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                        else:
                                                            mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            if ('cd', 68).length > test266151307():
                                                                revert with 'NH{q', 65
                                                            else:
                                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                                mem[64] = _6340 + (64 * ('cd', 68).length) + 64
                                                                if not ('cd', 68).length:
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6882 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6906 = mem[_6882]
                                                                            require mem[_6882] == mem[_6882 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_6906))
                                                                                staticcall address(_6906).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6937 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6942 = mem[_6937]
                                                                                    require mem[_6937] == mem[_6937 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 0
                                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6994 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _7020 = mem[_6994]
                                                                                                require mem[_6994] == mem[_6994 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_7020))
                                                                                                    staticcall address(_7020).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7086 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7086] == mem[_7086 + 12 len 20]
                                                                                                        if not mem[_7086 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(address(_6942))
                                                                                                            staticcall address(_6942).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7142 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7164 = mem[_7142]
                                                                                                                require mem[_7142] == mem[_7142 + 18 len 14]
                                                                                                                _7174 = mem[_7142 + 32]
                                                                                                                require mem[_7142 + 32] == mem[_7142 + 50 len 14]
                                                                                                                require mem[_7142 + 64] == mem[_7142 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_6942))
                                                                                                                    staticcall address(_6942).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7218 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7218] == mem[_7218 + 12 len 20]
                                                                                                                        if mem[_7218 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_6942))
                                                                                                                                staticcall address(_6942).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7292 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7292] == mem[_7292 + 12 len 20]
                                                                                                                                    if mem[_7292 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7174)
                                                                                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7164)
                                                                                                                                if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7407 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7407:
                                                                        _7419 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7419] = idx
                                                                        mem[_7419 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7419 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7419 + 96] = mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7419
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                                                else:
                                                                    mem[_6340 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                    t = 0
                                                                    while t < ('cd', 68).length:
                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                gas gas_remaining wei
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _6884 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _6909 = mem[_6884]
                                                                            require mem[_6884] == mem[_6884 + 12 len 20]
                                                                            if t >= ('cd', 68).length:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                require ext_code.size(address(_6909))
                                                                                staticcall address(_6909).getPair(address arg1, address arg2) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _6938 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _6943 = mem[_6938]
                                                                                    require mem[_6938] == mem[_6938 + 12 len 20]
                                                                                    if t >= mem[_6340]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _6340 + 32] = 0
                                                                                        if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 0
                                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _6995 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _7021 = mem[_6995]
                                                                                                require mem[_6995] == mem[_6995 + 12 len 20]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_7021))
                                                                                                    staticcall address(_7021).getPair(address arg1, address arg2) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _7087 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_7087] == mem[_7087 + 12 len 20]
                                                                                                        if not mem[_7087 + 12 len 20]:
                                                                                                            if t == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                t = t + 1
                                                                                                                continue 
                                                                                                        else:
                                                                                                            require ext_code.size(address(_6943))
                                                                                                            staticcall address(_6943).getReserves() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _7143 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 96
                                                                                                                _7165 = mem[_7143]
                                                                                                                require mem[_7143] == mem[_7143 + 18 len 14]
                                                                                                                _7175 = mem[_7143 + 32]
                                                                                                                require mem[_7143 + 32] == mem[_7143 + 50 len 14]
                                                                                                                require mem[_7143 + 64] == mem[_7143 + 92 len 4]
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_6943))
                                                                                                                    staticcall address(_6943).token0() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _7219 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_7219] == mem[_7219 + 12 len 20]
                                                                                                                        if mem[_7219 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t >= ('cd', 68).length:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                                require ext_code.size(address(_6943))
                                                                                                                                staticcall address(_6943).token1() with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _7293 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_7293] == mem[_7293 + 12 len 20]
                                                                                                                                    if mem[_7293 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                                    else:
                                                                                                                                        if t >= mem[_6340]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7175)
                                                                                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                                revert with 'NH{q', 50
                                                                                                                                            else:
                                                                                                                                                mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                                if t == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    t = t + 1
                                                                                                                                                    continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_6340]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _6340 + 32] = Mask(112, 0, _7165)
                                                                                                                                if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                    _7408 = mem[_6340]
                                                                    t = 0
                                                                    u = 0
                                                                    while t < _7408:
                                                                        _7421 = mem[64]
                                                                        mem[64] = mem[64] + 128
                                                                        mem[_7421] = idx
                                                                        mem[_7421 + 32] = s
                                                                        if t >= mem[_6340]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_7421 + 64] = mem[(32 * t) + _6340 + 32]
                                                                            if t >= mem[_6340 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[_7421 + 96] = mem[(32 * t) + _6340 + (32 * ('cd', 68).length) + 64]
                                                                                if u == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if u >= mem[96]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * u) + 128] = _7421
                                                                                        if t == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            t = t + 1
                                                                                            u = u + 1
                                                                                            continue 
                                                                    if s == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        s = s + 1
                                                                        continue 
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                idx = idx + 1
                                                continue 
                                        _5759 = mem[64]
                                        mem[mem[64]] = 32
                                        _5760 = mem[96]
                                        mem[mem[64] + 32] = mem[96]
                                        s = 0
                                        t = 128
                                        u = mem[64] + 64
                                        while s < _5760:
                                            _6294 = mem[t]
                                            mem[u] = mem[mem[t]]
                                            mem[u + 32] = mem[_6294 + 32]
                                            mem[u + 64] = mem[_6294 + 64]
                                            mem[u + 96] = mem[_6294 + 96]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 128
                                            continue 
                                        return memory
                                          from mem[64]
                                           len _5759 + (128 * _5760) + -mem[64] + 64
                                else:
                                    idx = 0
                                    while idx < ('cd', 36).length:
                                        s = 0
                                        while s < ('cd', 4).length:
                                            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                            if idx >= ('cd', 36).length:
                                                revert with 'NH{q', 50
                                            else:
                                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    _5224 = mem[64]
                                                    mem[mem[64]] = ('cd', 68).length
                                                    if not ('cd', 68).length:
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            _5225 = mem[64] + (32 * ('cd', 68).length) + 32
                                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                            mem[64] = _5225 + (32 * ('cd', 68).length) + 32
                                                            if not ('cd', 68).length:
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5762 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5784 = mem[_5762]
                                                                        require mem[_5762] == mem[_5762 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            require ext_code.size(address(_5784))
                                                                            staticcall address(_5784).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5819 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5824 = mem[_5819]
                                                                                require mem[_5819] == mem[_5819 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5225]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5225 + 32] = 0
                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5876 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5902 = mem[_5876]
                                                                                            require mem[_5876] == mem[_5876 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_5902))
                                                                                                staticcall address(_5902).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5968 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5968] == mem[_5968 + 12 len 20]
                                                                                                    if not mem[_5968 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(address(_5824))
                                                                                                        staticcall address(_5824).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6024 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6046 = mem[_6024]
                                                                                                            require mem[_6024] == mem[_6024 + 18 len 14]
                                                                                                            _6056 = mem[_6024 + 32]
                                                                                                            require mem[_6024 + 32] == mem[_6024 + 50 len 14]
                                                                                                            require mem[_6024 + 64] == mem[_6024 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_5824))
                                                                                                                staticcall address(_5824).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6100 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6100] == mem[_6100 + 12 len 20]
                                                                                                                    if mem[_6100 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_5824))
                                                                                                                            staticcall address(_5824).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6174 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6174] == mem[_6174 + 12 len 20]
                                                                                                                                if mem[_6174 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6056)
                                                                                                                                        if t >= mem[_5225]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6046)
                                                                                                                            if t >= mem[_5225]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6289 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6289:
                                                                    _6299 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6299] = idx
                                                                    mem[_6299 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6299 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5225]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6299 + 96] = mem[(32 * t) + _5225 + 32]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6299
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                            else:
                                                                mem[_5225 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5764 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5787 = mem[_5764]
                                                                        require mem[_5764] == mem[_5764 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            require ext_code.size(address(_5787))
                                                                            staticcall address(_5787).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5820 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5825 = mem[_5820]
                                                                                require mem[_5820] == mem[_5820 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5225]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5225 + 32] = 0
                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5877 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5903 = mem[_5877]
                                                                                            require mem[_5877] == mem[_5877 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_5903))
                                                                                                staticcall address(_5903).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5969 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5969] == mem[_5969 + 12 len 20]
                                                                                                    if not mem[_5969 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(address(_5825))
                                                                                                        staticcall address(_5825).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6025 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6047 = mem[_6025]
                                                                                                            require mem[_6025] == mem[_6025 + 18 len 14]
                                                                                                            _6057 = mem[_6025 + 32]
                                                                                                            require mem[_6025 + 32] == mem[_6025 + 50 len 14]
                                                                                                            require mem[_6025 + 64] == mem[_6025 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_5825))
                                                                                                                staticcall address(_5825).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6101 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6101] == mem[_6101 + 12 len 20]
                                                                                                                    if mem[_6101 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_5825))
                                                                                                                            staticcall address(_5825).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6175 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6175] == mem[_6175 + 12 len 20]
                                                                                                                                if mem[_6175 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6057)
                                                                                                                                        if t >= mem[_5225]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6047)
                                                                                                                            if t >= mem[_5225]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5225 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6290 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6290:
                                                                    _6301 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6301] = idx
                                                                    mem[_6301 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6301 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5225]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6301 + 96] = mem[(32 * t) + _5225 + 32]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6301
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                    else:
                                                        mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        if ('cd', 68).length > test266151307():
                                                            revert with 'NH{q', 65
                                                        else:
                                                            mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                            mem[64] = _5224 + (64 * ('cd', 68).length) + 64
                                                            if not ('cd', 68).length:
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5766 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5790 = mem[_5766]
                                                                        require mem[_5766] == mem[_5766 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            require ext_code.size(address(_5790))
                                                                            staticcall address(_5790).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5821 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5826 = mem[_5821]
                                                                                require mem[_5821] == mem[_5821 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 0
                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5878 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5904 = mem[_5878]
                                                                                            require mem[_5878] == mem[_5878 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_5904))
                                                                                                staticcall address(_5904).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5970 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5970] == mem[_5970 + 12 len 20]
                                                                                                    if not mem[_5970 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(address(_5826))
                                                                                                        staticcall address(_5826).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6026 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6048 = mem[_6026]
                                                                                                            require mem[_6026] == mem[_6026 + 18 len 14]
                                                                                                            _6058 = mem[_6026 + 32]
                                                                                                            require mem[_6026 + 32] == mem[_6026 + 50 len 14]
                                                                                                            require mem[_6026 + 64] == mem[_6026 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_5826))
                                                                                                                staticcall address(_5826).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6102 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6102] == mem[_6102 + 12 len 20]
                                                                                                                    if mem[_6102 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_5826))
                                                                                                                            staticcall address(_5826).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6176 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6176] == mem[_6176 + 12 len 20]
                                                                                                                                if mem[_6176 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6058)
                                                                                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6048)
                                                                                                                            if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6291 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6291:
                                                                    _6303 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6303] = idx
                                                                    mem[_6303 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6303 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6303 + 96] = mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6303
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                                            else:
                                                                mem[_5224 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                                t = 0
                                                                while t < ('cd', 68).length:
                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _5768 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _5793 = mem[_5768]
                                                                        require mem[_5768] == mem[_5768 + 12 len 20]
                                                                        if t >= ('cd', 68).length:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                            require ext_code.size(address(_5793))
                                                                            staticcall address(_5793).getPair(address arg1, address arg2) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _5822 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _5827 = mem[_5822]
                                                                                require mem[_5822] == mem[_5822 + 12 len 20]
                                                                                if t >= mem[_5224]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _5224 + 32] = 0
                                                                                    if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 0
                                                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                                gas gas_remaining wei
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _5879 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            _5905 = mem[_5879]
                                                                                            require mem[_5879] == mem[_5879 + 12 len 20]
                                                                                            if t >= ('cd', 68).length:
                                                                                                revert with 'NH{q', 50
                                                                                            else:
                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                                require ext_code.size(address(_5905))
                                                                                                staticcall address(_5905).getPair(address arg1, address arg2) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _5971 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_5971] == mem[_5971 + 12 len 20]
                                                                                                    if not mem[_5971 + 12 len 20]:
                                                                                                        if t == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            t = t + 1
                                                                                                            continue 
                                                                                                    else:
                                                                                                        require ext_code.size(address(_5827))
                                                                                                        staticcall address(_5827).getReserves() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _6027 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 96
                                                                                                            _6049 = mem[_6027]
                                                                                                            require mem[_6027] == mem[_6027 + 18 len 14]
                                                                                                            _6059 = mem[_6027 + 32]
                                                                                                            require mem[_6027 + 32] == mem[_6027 + 50 len 14]
                                                                                                            require mem[_6027 + 64] == mem[_6027 + 92 len 4]
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_5827))
                                                                                                                staticcall address(_5827).token0() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _6103 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_6103] == mem[_6103 + 12 len 20]
                                                                                                                    if mem[_6103 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t >= ('cd', 68).length:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                            require ext_code.size(address(_5827))
                                                                                                                            staticcall address(_5827).token1() with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _6177 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_6177] == mem[_6177 + 12 len 20]
                                                                                                                                if mem[_6177 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                                                else:
                                                                                                                                    if t >= mem[_5224]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6059)
                                                                                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                            revert with 'NH{q', 50
                                                                                                                                        else:
                                                                                                                                            mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                            if t == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                t = t + 1
                                                                                                                                                continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_5224]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _5224 + 32] = Mask(112, 0, _6049)
                                                                                                                            if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                _6292 = mem[_5224]
                                                                t = 0
                                                                u = 0
                                                                while t < _6292:
                                                                    _6305 = mem[64]
                                                                    mem[64] = mem[64] + 128
                                                                    mem[_6305] = idx
                                                                    mem[_6305 + 32] = s
                                                                    if t >= mem[_5224]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_6305 + 64] = mem[(32 * t) + _5224 + 32]
                                                                        if t >= mem[_5224 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[_6305 + 96] = mem[(32 * t) + _5224 + (32 * ('cd', 68).length) + 64]
                                                                            if u == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if u >= mem[96]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * u) + 128] = _6305
                                                                                    if t == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        t = t + 1
                                                                                        u = u + 1
                                                                                        continue 
                                                                if s == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    s = s + 1
                                                                    continue 
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    _4643 = mem[64]
                                    mem[mem[64]] = 32
                                    _4644 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    s = 0
                                    t = 128
                                    u = mem[64] + 64
                                    while s < _4644:
                                        _5178 = mem[t]
                                        mem[u] = mem[mem[t]]
                                        mem[u + 32] = mem[_5178 + 32]
                                        mem[u + 64] = mem[_5178 + 64]
                                        mem[u + 96] = mem[_5178 + 96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 128
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _4643 + (128 * _4644) + -mem[64] + 64
                            else:
                                idx = 0
                                while idx < ('cd', 36).length:
                                    s = 0
                                    while s < ('cd', 4).length:
                                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                        if idx >= ('cd', 36).length:
                                            revert with 'NH{q', 50
                                        else:
                                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                _4108 = mem[64]
                                                mem[mem[64]] = ('cd', 68).length
                                                if not ('cd', 68).length:
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        _4109 = mem[64] + (32 * ('cd', 68).length) + 32
                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                        mem[64] = _4109 + (32 * ('cd', 68).length) + 32
                                                        if not ('cd', 68).length:
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4646 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4668 = mem[_4646]
                                                                    require mem[_4646] == mem[_4646 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        require ext_code.size(address(_4668))
                                                                        staticcall address(_4668).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4703 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4708 = mem[_4703]
                                                                            require mem[_4703] == mem[_4703 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4109]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4109 + 32] = 0
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4760 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4786 = mem[_4760]
                                                                                        require mem[_4760] == mem[_4760 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_4786))
                                                                                            staticcall address(_4786).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4852 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4852] == mem[_4852 + 12 len 20]
                                                                                                if not mem[_4852 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(address(_4708))
                                                                                                    staticcall address(_4708).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4908 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4930 = mem[_4908]
                                                                                                        require mem[_4908] == mem[_4908 + 18 len 14]
                                                                                                        _4940 = mem[_4908 + 32]
                                                                                                        require mem[_4908 + 32] == mem[_4908 + 50 len 14]
                                                                                                        require mem[_4908 + 64] == mem[_4908 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_4708))
                                                                                                            staticcall address(_4708).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4984 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4984] == mem[_4984 + 12 len 20]
                                                                                                                if mem[_4984 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_4708))
                                                                                                                        staticcall address(_4708).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5058 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5058] == mem[_5058 + 12 len 20]
                                                                                                                            if mem[_5058 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4940)
                                                                                                                                    if t >= mem[_4109]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4109 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4930)
                                                                                                                        if t >= mem[_4109]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4109 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5173 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5173:
                                                                _5183 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5183] = idx
                                                                mem[_5183 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5183 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4109]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5183 + 96] = mem[(32 * t) + _4109 + 32]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5183
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                        else:
                                                            mem[_4109 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4648 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4671 = mem[_4648]
                                                                    require mem[_4648] == mem[_4648 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        require ext_code.size(address(_4671))
                                                                        staticcall address(_4671).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4704 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4709 = mem[_4704]
                                                                            require mem[_4704] == mem[_4704 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4109]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4109 + 32] = 0
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4761 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4787 = mem[_4761]
                                                                                        require mem[_4761] == mem[_4761 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_4787))
                                                                                            staticcall address(_4787).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4853 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4853] == mem[_4853 + 12 len 20]
                                                                                                if not mem[_4853 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(address(_4709))
                                                                                                    staticcall address(_4709).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4909 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4931 = mem[_4909]
                                                                                                        require mem[_4909] == mem[_4909 + 18 len 14]
                                                                                                        _4941 = mem[_4909 + 32]
                                                                                                        require mem[_4909 + 32] == mem[_4909 + 50 len 14]
                                                                                                        require mem[_4909 + 64] == mem[_4909 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_4709))
                                                                                                            staticcall address(_4709).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4985 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4985] == mem[_4985 + 12 len 20]
                                                                                                                if mem[_4985 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_4709))
                                                                                                                        staticcall address(_4709).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5059 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5059] == mem[_5059 + 12 len 20]
                                                                                                                            if mem[_5059 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4941)
                                                                                                                                    if t >= mem[_4109]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4109 + 32] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4931)
                                                                                                                        if t >= mem[_4109]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4109 + 32] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5174 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5174:
                                                                _5185 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5185] = idx
                                                                mem[_5185 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5185 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4109]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5185 + 96] = mem[(32 * t) + _4109 + 32]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5185
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                else:
                                                    mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    if ('cd', 68).length > test266151307():
                                                        revert with 'NH{q', 65
                                                    else:
                                                        mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                        mem[64] = _4108 + (64 * ('cd', 68).length) + 64
                                                        if not ('cd', 68).length:
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4650 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4674 = mem[_4650]
                                                                    require mem[_4650] == mem[_4650 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        require ext_code.size(address(_4674))
                                                                        staticcall address(_4674).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4705 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4710 = mem[_4705]
                                                                            require mem[_4705] == mem[_4705 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 0
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4762 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4788 = mem[_4762]
                                                                                        require mem[_4762] == mem[_4762 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_4788))
                                                                                            staticcall address(_4788).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4854 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4854] == mem[_4854 + 12 len 20]
                                                                                                if not mem[_4854 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(address(_4710))
                                                                                                    staticcall address(_4710).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4910 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4932 = mem[_4910]
                                                                                                        require mem[_4910] == mem[_4910 + 18 len 14]
                                                                                                        _4942 = mem[_4910 + 32]
                                                                                                        require mem[_4910 + 32] == mem[_4910 + 50 len 14]
                                                                                                        require mem[_4910 + 64] == mem[_4910 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_4710))
                                                                                                            staticcall address(_4710).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4986 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4986] == mem[_4986 + 12 len 20]
                                                                                                                if mem[_4986 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_4710))
                                                                                                                        staticcall address(_4710).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5060 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5060] == mem[_5060 + 12 len 20]
                                                                                                                            if mem[_5060 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4942)
                                                                                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4932)
                                                                                                                        if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5175 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5175:
                                                                _5187 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5187] = idx
                                                                mem[_5187 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5187 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5187 + 96] = mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5187
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                                        else:
                                                            mem[_4108 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                            t = 0
                                                            while t < ('cd', 68).length:
                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                        gas gas_remaining wei
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _4652 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _4677 = mem[_4652]
                                                                    require mem[_4652] == mem[_4652 + 12 len 20]
                                                                    if t >= ('cd', 68).length:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                        require ext_code.size(address(_4677))
                                                                        staticcall address(_4677).getPair(address arg1, address arg2) with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _4706 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _4711 = mem[_4706]
                                                                            require mem[_4706] == mem[_4706 + 12 len 20]
                                                                            if t >= mem[_4108]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _4108 + 32] = 0
                                                                                if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 0
                                                                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                            gas gas_remaining wei
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _4763 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        _4789 = mem[_4763]
                                                                                        require mem[_4763] == mem[_4763 + 12 len 20]
                                                                                        if t >= ('cd', 68).length:
                                                                                            revert with 'NH{q', 50
                                                                                        else:
                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                            mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                            require ext_code.size(address(_4789))
                                                                                            staticcall address(_4789).getPair(address arg1, address arg2) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _4855 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_4855] == mem[_4855 + 12 len 20]
                                                                                                if not mem[_4855 + 12 len 20]:
                                                                                                    if t == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        t = t + 1
                                                                                                        continue 
                                                                                                else:
                                                                                                    require ext_code.size(address(_4711))
                                                                                                    staticcall address(_4711).getReserves() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _4911 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 96
                                                                                                        _4933 = mem[_4911]
                                                                                                        require mem[_4911] == mem[_4911 + 18 len 14]
                                                                                                        _4943 = mem[_4911 + 32]
                                                                                                        require mem[_4911 + 32] == mem[_4911 + 50 len 14]
                                                                                                        require mem[_4911 + 64] == mem[_4911 + 92 len 4]
                                                                                                        if t >= ('cd', 68).length:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                            require ext_code.size(address(_4711))
                                                                                                            staticcall address(_4711).token0() with:
                                                                                                                    gas gas_remaining wei
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _4987 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_4987] == mem[_4987 + 12 len 20]
                                                                                                                if mem[_4987 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                    if t >= ('cd', 68).length:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                        require ext_code.size(address(_4711))
                                                                                                                        staticcall address(_4711).token1() with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _5061 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_5061] == mem[_5061 + 12 len 20]
                                                                                                                            if mem[_5061 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                                            else:
                                                                                                                                if t >= mem[_4108]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4943)
                                                                                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                        revert with 'NH{q', 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                        if t == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            t = t + 1
                                                                                                                                            continue 
                                                                                                                else:
                                                                                                                    if t >= mem[_4108]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _4108 + 32] = Mask(112, 0, _4933)
                                                                                                                        if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                            _5176 = mem[_4108]
                                                            t = 0
                                                            u = 0
                                                            while t < _5176:
                                                                _5189 = mem[64]
                                                                mem[64] = mem[64] + 128
                                                                mem[_5189] = idx
                                                                mem[_5189 + 32] = s
                                                                if t >= mem[_4108]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_5189 + 64] = mem[(32 * t) + _4108 + 32]
                                                                    if t >= mem[_4108 + (32 * ('cd', 68).length) + 32]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[_5189 + 96] = mem[(32 * t) + _4108 + (32 * ('cd', 68).length) + 64]
                                                                        if u == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if u >= mem[96]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * u) + 128] = _5189
                                                                                if t == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    t = t + 1
                                                                                    u = u + 1
                                                                                    continue 
                                                            if s == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                s = s + 1
                                                                continue 
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                                _3527 = mem[64]
                                mem[mem[64]] = 32
                                _3528 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                s = 0
                                t = 128
                                u = mem[64] + 64
                                while s < _3528:
                                    _4062 = mem[t]
                                    mem[u] = mem[mem[t]]
                                    mem[u + 32] = mem[_4062 + 32]
                                    mem[u + 64] = mem[_4062 + 64]
                                    mem[u + 96] = mem[_4062 + 96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 128
                                    continue 
                                return memory
                                  from mem[64]
                                   len _3527 + (128 * _3528) + -mem[64] + 64
                        else:
                            idx = 0
                            while idx < ('cd', 36).length:
                                s = 0
                                while s < ('cd', 4).length:
                                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                    if idx >= ('cd', 36).length:
                                        revert with 'NH{q', 50
                                    else:
                                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                        if ('cd', 68).length > test266151307():
                                            revert with 'NH{q', 65
                                        else:
                                            _2992 = mem[64]
                                            mem[mem[64]] = ('cd', 68).length
                                            if not ('cd', 68).length:
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    _2993 = mem[64] + (32 * ('cd', 68).length) + 32
                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                    mem[64] = _2993 + (32 * ('cd', 68).length) + 32
                                                    if not ('cd', 68).length:
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3530 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3552 = mem[_3530]
                                                                require mem[_3530] == mem[_3530 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    require ext_code.size(address(_3552))
                                                                    staticcall address(_3552).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3587 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3592 = mem[_3587]
                                                                        require mem[_3587] == mem[_3587 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2993]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2993 + 32] = 0
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3644 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3670 = mem[_3644]
                                                                                    require mem[_3644] == mem[_3644 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_3670))
                                                                                        staticcall address(_3670).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3736 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3736] == mem[_3736 + 12 len 20]
                                                                                            if not mem[_3736 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(address(_3592))
                                                                                                staticcall address(_3592).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3792 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3814 = mem[_3792]
                                                                                                    require mem[_3792] == mem[_3792 + 18 len 14]
                                                                                                    _3824 = mem[_3792 + 32]
                                                                                                    require mem[_3792 + 32] == mem[_3792 + 50 len 14]
                                                                                                    require mem[_3792 + 64] == mem[_3792 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_3592))
                                                                                                        staticcall address(_3592).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3868 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3868] == mem[_3868 + 12 len 20]
                                                                                                            if mem[_3868 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_3592))
                                                                                                                    staticcall address(_3592).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3942 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3942] == mem[_3942 + 12 len 20]
                                                                                                                        if mem[_3942 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3824)
                                                                                                                                if t >= mem[_2993]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2993 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3814)
                                                                                                                    if t >= mem[_2993]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2993 + 32] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4057 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4057:
                                                            _4067 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4067] = idx
                                                            mem[_4067 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4067 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2993]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4067 + 96] = mem[(32 * t) + _2993 + 32]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4067
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        mem[_2993 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3532 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3555 = mem[_3532]
                                                                require mem[_3532] == mem[_3532 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    require ext_code.size(address(_3555))
                                                                    staticcall address(_3555).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3588 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3593 = mem[_3588]
                                                                        require mem[_3588] == mem[_3588 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2993]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2993 + 32] = 0
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3645 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3671 = mem[_3645]
                                                                                    require mem[_3645] == mem[_3645 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_3671))
                                                                                        staticcall address(_3671).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3737 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3737] == mem[_3737 + 12 len 20]
                                                                                            if not mem[_3737 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(address(_3593))
                                                                                                staticcall address(_3593).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3793 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3815 = mem[_3793]
                                                                                                    require mem[_3793] == mem[_3793 + 18 len 14]
                                                                                                    _3825 = mem[_3793 + 32]
                                                                                                    require mem[_3793 + 32] == mem[_3793 + 50 len 14]
                                                                                                    require mem[_3793 + 64] == mem[_3793 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_3593))
                                                                                                        staticcall address(_3593).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3869 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3869] == mem[_3869 + 12 len 20]
                                                                                                            if mem[_3869 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_3593))
                                                                                                                    staticcall address(_3593).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3943 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3943] == mem[_3943 + 12 len 20]
                                                                                                                        if mem[_3943 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3825)
                                                                                                                                if t >= mem[_2993]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2993 + 32] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3815)
                                                                                                                    if t >= mem[_2993]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2993 + 32] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4058 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4058:
                                                            _4069 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4069] = idx
                                                            mem[_4069 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4069 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2993]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4069 + 96] = mem[(32 * t) + _2993 + 32]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4069
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                            else:
                                                mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                if ('cd', 68).length > test266151307():
                                                    revert with 'NH{q', 65
                                                else:
                                                    mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                    mem[64] = _2992 + (64 * ('cd', 68).length) + 64
                                                    if not ('cd', 68).length:
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3534 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3558 = mem[_3534]
                                                                require mem[_3534] == mem[_3534 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    require ext_code.size(address(_3558))
                                                                    staticcall address(_3558).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3589 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3594 = mem[_3589]
                                                                        require mem[_3589] == mem[_3589 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 0
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3646 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3672 = mem[_3646]
                                                                                    require mem[_3646] == mem[_3646 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_3672))
                                                                                        staticcall address(_3672).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3738 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3738] == mem[_3738 + 12 len 20]
                                                                                            if not mem[_3738 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(address(_3594))
                                                                                                staticcall address(_3594).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3794 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3816 = mem[_3794]
                                                                                                    require mem[_3794] == mem[_3794 + 18 len 14]
                                                                                                    _3826 = mem[_3794 + 32]
                                                                                                    require mem[_3794 + 32] == mem[_3794 + 50 len 14]
                                                                                                    require mem[_3794 + 64] == mem[_3794 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_3594))
                                                                                                        staticcall address(_3594).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3870 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3870] == mem[_3870 + 12 len 20]
                                                                                                            if mem[_3870 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_3594))
                                                                                                                    staticcall address(_3594).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3944 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3944] == mem[_3944 + 12 len 20]
                                                                                                                        if mem[_3944 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3826)
                                                                                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3816)
                                                                                                                    if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4059 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4059:
                                                            _4071 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4071] = idx
                                                            mem[_4071 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4071 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4071 + 96] = mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4071
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                                    else:
                                                        mem[_2992 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                        t = 0
                                                        while t < ('cd', 68).length:
                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _3536 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _3561 = mem[_3536]
                                                                require mem[_3536] == mem[_3536 + 12 len 20]
                                                                if t >= ('cd', 68).length:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                    require ext_code.size(address(_3561))
                                                                    staticcall address(_3561).getPair(address arg1, address arg2) with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _3590 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _3595 = mem[_3590]
                                                                        require mem[_3590] == mem[_3590 + 12 len 20]
                                                                        if t >= mem[_2992]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _2992 + 32] = 0
                                                                            if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                revert with 'NH{q', 50
                                                                            else:
                                                                                mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 0
                                                                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                        gas gas_remaining wei
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _3647 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _3673 = mem[_3647]
                                                                                    require mem[_3647] == mem[_3647 + 12 len 20]
                                                                                    if t >= ('cd', 68).length:
                                                                                        revert with 'NH{q', 50
                                                                                    else:
                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                        mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                        require ext_code.size(address(_3673))
                                                                                        staticcall address(_3673).getPair(address arg1, address arg2) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            _3739 = mem[64]
                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                            require return_data.size >= 32
                                                                                            require mem[_3739] == mem[_3739 + 12 len 20]
                                                                                            if not mem[_3739 + 12 len 20]:
                                                                                                if t == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    t = t + 1
                                                                                                    continue 
                                                                                            else:
                                                                                                require ext_code.size(address(_3595))
                                                                                                staticcall address(_3595).getReserves() with:
                                                                                                        gas gas_remaining wei
                                                                                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _3795 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 96
                                                                                                    _3817 = mem[_3795]
                                                                                                    require mem[_3795] == mem[_3795 + 18 len 14]
                                                                                                    _3827 = mem[_3795 + 32]
                                                                                                    require mem[_3795 + 32] == mem[_3795 + 50 len 14]
                                                                                                    require mem[_3795 + 64] == mem[_3795 + 92 len 4]
                                                                                                    if t >= ('cd', 68).length:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                        require ext_code.size(address(_3595))
                                                                                                        staticcall address(_3595).token0() with:
                                                                                                                gas gas_remaining wei
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3871 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3871] == mem[_3871 + 12 len 20]
                                                                                                            if mem[_3871 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                if t >= ('cd', 68).length:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                    require ext_code.size(address(_3595))
                                                                                                                    staticcall address(_3595).token1() with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3945 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3945] == mem[_3945 + 12 len 20]
                                                                                                                        if mem[_3945 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                            if t == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                t = t + 1
                                                                                                                                continue 
                                                                                                                        else:
                                                                                                                            if t >= mem[_2992]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3827)
                                                                                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                    if t == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        t = t + 1
                                                                                                                                        continue 
                                                                                                            else:
                                                                                                                if t >= mem[_2992]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _2992 + 32] = Mask(112, 0, _3817)
                                                                                                                    if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                        _4060 = mem[_2992]
                                                        t = 0
                                                        u = 0
                                                        while t < _4060:
                                                            _4073 = mem[64]
                                                            mem[64] = mem[64] + 128
                                                            mem[_4073] = idx
                                                            mem[_4073 + 32] = s
                                                            if t >= mem[_2992]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_4073 + 64] = mem[(32 * t) + _2992 + 32]
                                                                if t >= mem[_2992 + (32 * ('cd', 68).length) + 32]:
                                                                    revert with 'NH{q', 50
                                                                else:
                                                                    mem[_4073 + 96] = mem[(32 * t) + _2992 + (32 * ('cd', 68).length) + 64]
                                                                    if u == -1:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if u >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * u) + 128] = _4073
                                                                            if t == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                t = t + 1
                                                                                u = u + 1
                                                                                continue 
                                                        if s == -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            s = s + 1
                                                            continue 
                                if idx == -1:
                                    revert with 'NH{q', 17
                                else:
                                    idx = idx + 1
                                    continue 
                            _2411 = mem[64]
                            mem[mem[64]] = 32
                            _2412 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 64
                            while s < _2412:
                                _2946 = mem[t]
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_2946 + 32]
                                mem[u + 64] = mem[_2946 + 64]
                                mem[u + 96] = mem[_2946 + 96]
                                s = s + 1
                                t = t + 32
                                u = u + 128
                                continue 
                            return memory
                              from mem[64]
                               len _2411 + (128 * _2412) + -mem[64] + 64
                    else:
                        idx = 0
                        while idx < ('cd', 36).length:
                            s = 0
                            while s < ('cd', 4).length:
                                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                else:
                                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                    if ('cd', 68).length > test266151307():
                                        revert with 'NH{q', 65
                                    else:
                                        _1876 = mem[64]
                                        mem[mem[64]] = ('cd', 68).length
                                        if not ('cd', 68).length:
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                _1877 = mem[64] + (32 * ('cd', 68).length) + 32
                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                mem[64] = _1877 + (32 * ('cd', 68).length) + 32
                                                if not ('cd', 68).length:
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2414 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2436 = mem[_2414]
                                                            require mem[_2414] == mem[_2414 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                require ext_code.size(address(_2436))
                                                                staticcall address(_2436).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2471 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2476 = mem[_2471]
                                                                    require mem[_2471] == mem[_2471 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1877]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1877 + 32] = 0
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2528 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2554 = mem[_2528]
                                                                                require mem[_2528] == mem[_2528 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_2554))
                                                                                    staticcall address(_2554).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2620 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2620] == mem[_2620 + 12 len 20]
                                                                                        if not mem[_2620 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(address(_2476))
                                                                                            staticcall address(_2476).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2676 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2698 = mem[_2676]
                                                                                                require mem[_2676] == mem[_2676 + 18 len 14]
                                                                                                _2708 = mem[_2676 + 32]
                                                                                                require mem[_2676 + 32] == mem[_2676 + 50 len 14]
                                                                                                require mem[_2676 + 64] == mem[_2676 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_2476))
                                                                                                    staticcall address(_2476).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2752 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2752] == mem[_2752 + 12 len 20]
                                                                                                        if mem[_2752 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_2476))
                                                                                                                staticcall address(_2476).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2826 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2826] == mem[_2826 + 12 len 20]
                                                                                                                    if mem[_2826 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2708)
                                                                                                                            if t >= mem[_1877]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1877 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2698)
                                                                                                                if t >= mem[_1877]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1877 + 32] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2941 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2941:
                                                        _2951 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2951] = idx
                                                        mem[_2951 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2951 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1877]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2951 + 96] = mem[(32 * t) + _1877 + 32]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2951
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    mem[_1877 + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2416 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2439 = mem[_2416]
                                                            require mem[_2416] == mem[_2416 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                require ext_code.size(address(_2439))
                                                                staticcall address(_2439).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2472 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2477 = mem[_2472]
                                                                    require mem[_2472] == mem[_2472 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1877]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1877 + 32] = 0
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2529 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2555 = mem[_2529]
                                                                                require mem[_2529] == mem[_2529 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_2555))
                                                                                    staticcall address(_2555).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2621 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2621] == mem[_2621 + 12 len 20]
                                                                                        if not mem[_2621 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(address(_2477))
                                                                                            staticcall address(_2477).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2677 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2699 = mem[_2677]
                                                                                                require mem[_2677] == mem[_2677 + 18 len 14]
                                                                                                _2709 = mem[_2677 + 32]
                                                                                                require mem[_2677 + 32] == mem[_2677 + 50 len 14]
                                                                                                require mem[_2677 + 64] == mem[_2677 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_2477))
                                                                                                    staticcall address(_2477).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2753 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2753] == mem[_2753 + 12 len 20]
                                                                                                        if mem[_2753 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_2477))
                                                                                                                staticcall address(_2477).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2827 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2827] == mem[_2827 + 12 len 20]
                                                                                                                    if mem[_2827 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2709)
                                                                                                                            if t >= mem[_1877]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1877 + 32] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2699)
                                                                                                                if t >= mem[_1877]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1877 + 32] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2942 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2942:
                                                        _2953 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2953] = idx
                                                        mem[_2953 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2953 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1877]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2953 + 96] = mem[(32 * t) + _1877 + 32]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2953
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                        else:
                                            mem[mem[64] + 32 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                            if ('cd', 68).length > test266151307():
                                                revert with 'NH{q', 65
                                            else:
                                                mem[mem[64] + (32 * ('cd', 68).length) + 32] = ('cd', 68).length
                                                mem[64] = _1876 + (64 * ('cd', 68).length) + 64
                                                if not ('cd', 68).length:
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2418 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2442 = mem[_2418]
                                                            require mem[_2418] == mem[_2418 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                require ext_code.size(address(_2442))
                                                                staticcall address(_2442).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2473 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2478 = mem[_2473]
                                                                    require mem[_2473] == mem[_2473 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 0
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2530 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2556 = mem[_2530]
                                                                                require mem[_2530] == mem[_2530 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_2556))
                                                                                    staticcall address(_2556).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2622 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2622] == mem[_2622 + 12 len 20]
                                                                                        if not mem[_2622 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(address(_2478))
                                                                                            staticcall address(_2478).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2678 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2700 = mem[_2678]
                                                                                                require mem[_2678] == mem[_2678 + 18 len 14]
                                                                                                _2710 = mem[_2678 + 32]
                                                                                                require mem[_2678 + 32] == mem[_2678 + 50 len 14]
                                                                                                require mem[_2678 + 64] == mem[_2678 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_2478))
                                                                                                    staticcall address(_2478).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2754 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2754] == mem[_2754 + 12 len 20]
                                                                                                        if mem[_2754 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_2478))
                                                                                                                staticcall address(_2478).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2828 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2828] == mem[_2828 + 12 len 20]
                                                                                                                    if mem[_2828 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2710)
                                                                                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2700)
                                                                                                                if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2943 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2943:
                                                        _2955 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2955] = idx
                                                        mem[_2955 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2955 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2955 + 96] = mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2955
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    mem[_1876 + (32 * ('cd', 68).length) + 64 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
                                                    t = 0
                                                    while t < ('cd', 68).length:
                                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                gas gas_remaining wei
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            _2420 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _2445 = mem[_2420]
                                                            require mem[_2420] == mem[_2420 + 12 len 20]
                                                            if t >= ('cd', 68).length:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                require ext_code.size(address(_2445))
                                                                staticcall address(_2445).getPair(address arg1, address arg2) with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _2474 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _2479 = mem[_2474]
                                                                    require mem[_2474] == mem[_2474 + 12 len 20]
                                                                    if t >= mem[_1876]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * t) + _1876 + 32] = 0
                                                                        if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 0
                                                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).factory() with:
                                                                                    gas gas_remaining wei
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _2531 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _2557 = mem[_2531]
                                                                                require mem[_2531] == mem[_2531 + 12 len 20]
                                                                                if t >= ('cd', 68).length:
                                                                                    revert with 'NH{q', 50
                                                                                else:
                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64] + 4] = address(cd[((32 * s) + cd[4] + 36)])
                                                                                    mem[mem[64] + 36] = address(cd[((32 * t) + cd[68] + 36)])
                                                                                    require ext_code.size(address(_2557))
                                                                                    staticcall address(_2557).getPair(address arg1, address arg2) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[((32 * s) + cd[4] + 36)]), address(cd[((32 * t) + cd[68] + 36)])
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _2623 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_2623] == mem[_2623 + 12 len 20]
                                                                                        if not mem[_2623 + 12 len 20]:
                                                                                            if t == -1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                t = t + 1
                                                                                                continue 
                                                                                        else:
                                                                                            require ext_code.size(address(_2479))
                                                                                            staticcall address(_2479).getReserves() with:
                                                                                                    gas gas_remaining wei
                                                                                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2679 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 96
                                                                                                _2701 = mem[_2679]
                                                                                                require mem[_2679] == mem[_2679 + 18 len 14]
                                                                                                _2711 = mem[_2679 + 32]
                                                                                                require mem[_2679 + 32] == mem[_2679 + 50 len 14]
                                                                                                require mem[_2679 + 64] == mem[_2679 + 92 len 4]
                                                                                                if t >= ('cd', 68).length:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                    require ext_code.size(address(_2479))
                                                                                                    staticcall address(_2479).token0() with:
                                                                                                            gas gas_remaining wei
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2755 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2755] == mem[_2755 + 12 len 20]
                                                                                                        if mem[_2755 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                            if t >= ('cd', 68).length:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                require cd[((32 * t) + cd[68] + 36)] == address(cd[((32 * t) + cd[68] + 36)])
                                                                                                                require ext_code.size(address(_2479))
                                                                                                                staticcall address(_2479).token1() with:
                                                                                                                        gas gas_remaining wei
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2829 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2829] == mem[_2829 + 12 len 20]
                                                                                                                    if mem[_2829 + 12 len 20] != address(cd[((32 * t) + cd[68] + 36)]):
                                                                                                                        if t == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            t = t + 1
                                                                                                                            continue 
                                                                                                                    else:
                                                                                                                        if t >= mem[_1876]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2711)
                                                                                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                                if t == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    t = t + 1
                                                                                                                                    continue 
                                                                                                        else:
                                                                                                            if t >= mem[_1876]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                mem[(32 * t) + _1876 + 32] = Mask(112, 0, _2701)
                                                                                                                if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64] = 1
                                                                                                                    if t == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        t = t + 1
                                                                                                                        continue 
                                                    _2944 = mem[_1876]
                                                    t = 0
                                                    u = 0
                                                    while t < _2944:
                                                        _2957 = mem[64]
                                                        mem[64] = mem[64] + 128
                                                        mem[_2957] = idx
                                                        mem[_2957 + 32] = s
                                                        if t >= mem[_1876]:
                                                            revert with 'NH{q', 50
                                                        else:
                                                            mem[_2957 + 64] = mem[(32 * t) + _1876 + 32]
                                                            if t >= mem[_1876 + (32 * ('cd', 68).length) + 32]:
                                                                revert with 'NH{q', 50
                                                            else:
                                                                mem[_2957 + 96] = mem[(32 * t) + _1876 + (32 * ('cd', 68).length) + 64]
                                                                if u == -1:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if u >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        mem[(32 * u) + 128] = _2957
                                                                        if t == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            t = t + 1
                                                                            u = u + 1
                                                                            continue 
                                                    if s == -1:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        s = s + 1
                                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            else:
                                idx = idx + 1
                                continue 
                        _1295 = mem[64]
                        mem[mem[64]] = 32
                        _1304 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        s = 0
                        t = 128
                        u = mem[64] + 64
                        while s < _1304:
                            _1838 = mem[t]
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_1838 + 32]
                            mem[u + 64] = mem[_1838 + 64]
                            mem[u + 96] = mem[_1838 + 96]
                            s = s + 1
                            t = t + 32
                            u = u + 128
                            continue 
                        return memory
                          from mem[64]
                           len _1295 + (128 * _1304) + -mem[64] + 64
}



}
