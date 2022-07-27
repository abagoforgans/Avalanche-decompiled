contract main {




// =====================  Runtime code  =====================


#
#  - sub_52a00f4f(?)
#
mapping of uint8 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
mapping of uint8 stor3;
mapping of uint256 sub_bb46335f;
mapping of uint256 sub_139f7b39;
address sub_5b1c8c3aAddress;
address sub_277f45d1Address;
mapping of uint8 stor99;

function sub_139f7b39(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_139f7b39[arg1]
}

function sub_277f45d1(?) {
    return sub_277f45d1Address
}

function sub_5b1c8c3a(?) {
    return sub_5b1c8c3aAddress
}

function sub_7a0a228e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_bb46335f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bb46335f[arg1]
}

function sub_c40571ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c40571ec[arg1]
}

function sub_f119462d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return uint256(sub_f119462d[arg1][arg2])
}

function sub_fa847836(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function sub_90c3d203(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require uint256(sub_f119462d[address(arg1)][address(arg2)]) != uint256(sub_f119462d[address(arg1)][address(arg3)])
    return uint256(sub_f119462d[address(arg1)][address(arg2)]), uint256(sub_f119462d[address(arg1)][address(arg3)])
}

function sub_02be4f86(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[132] = 0, mem[132 len 28]
    mem[136] = 0
    staticcall address(arg1).mem[132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        mem[132] = 0, mem[132 len 4], 0
        return mem[132], 0, mem[168 len 24]
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    _41 = mem[196]
    mem[ceil32(return_data.size) + 133] = mem[164]
    return mem[ceil32(return_data.size) + 133], _41
}

function sub_a22da4b2(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require uint256(sub_f119462d[address(arg5)][address(arg2)]) != uint256(sub_f119462d[address(arg5)][address(arg3)])
    require ext_code.size(address(arg5))
    staticcall address(arg5).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args uint8(sub_f119462d[address(arg5)][address(arg2)]), uint8(sub_f119462d[address(arg5)][address(arg3)]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - 1)
}

function initContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99 != msg.sender:
        if 0xb5bd52398a18f53dcb8d2a578b245756e9114f87 != msg.sender:
            revert with 0, 'X'
    sub_5b1c8c3aAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x277f45d1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_277f45d1Address = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = 0, mem[ceil32(return_data.size) + 132 len 28]
    delegate sub_277f45d1Address.mem[ceil32(return_data.size) + 132 len 4] with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with 0, 'N'
    if not return_data.size:
        if ext_call.return_data[0] != 32:
            revert with 0, 'N'
    else:
        if 32 != return_data.size:
            revert with 0, 'N'
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99 != msg.sender:
        if 0xb5bd52398a18f53dcb8d2a578b245756e9114f87 != msg.sender:
            revert with 0, 'X'
    if arg1:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if eth.balance(this.address) > 0:
            call 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1417f0db(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (192 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 192
        _45 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_45] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_45 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_45 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_45 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_45 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_45 + 160] = cd[(s + 160)]
        mem[t] = _45
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[96] < 1:
        revert with 'NH{q', 17
    if mem[96] - 1 >= mem[96]:
        revert with 'NH{q', 50
    if mem[mem[128] + 160] == 1:
        if mem[96] == 2:
            return 1
        if mem[96] <= 3:
            mem[0] = mem[mem[128] + 44 len 20]
            mem[32] = 1
            if stor1[mem[0]]:
                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                if stor1[mem[0]]:
                    return 1
    else:
        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
            if mem[96] == 2:
                return 1
            if mem[96] <= 3:
                mem[0] = mem[mem[128] + 44 len 20]
                mem[32] = 1
                if stor1[mem[0]]:
                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                    if stor1[mem[0]]:
                        return 1
    return 0
}

function sub_407045a8(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 192
        _23 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_23] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_23 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_23 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_23 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_23 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_23 + 160] = cd[(s + 160)]
        mem[t] = _23
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _22 = mem[64]
    mem[mem[64]] = 0x407045a800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    _24 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _24:
        _42 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_42 + 44 len 20]
        mem[t + 64] = mem[_42 + 76 len 20]
        mem[t + 96] = mem[_42 + 108 len 20]
        mem[t + 128] = mem[_42 + 128]
        mem[t + 160] = mem[_42 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    require ext_code.size(sub_5b1c8c3aAddress)
    staticcall sub_5b1c8c3aAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _22 + (192 * _24) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _46 = mem[_45]
    require mem[_45] <= test266151307()
    require _45 + mem[_45] + 31 < _45 + return_data.size
    _48 = mem[_45 + mem[_45]]
    if mem[_45 + mem[_45]] > test266151307():
        revert with 'NH{q', 65
    if _45 + ceil32(return_data.size) + floor32(mem[_45 + mem[_45]]) + 1 > test266151307() or floor32(mem[_45 + mem[_45]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _45 + ceil32(return_data.size) + floor32(mem[_45 + mem[_45]]) + 1
    mem[_45 + ceil32(return_data.size)] = _48
    require _46 + (32 * _48) + 32 <= return_data.size
    idx = 0
    s = _45 + _46 + 32
    t = _45 + ceil32(return_data.size) + 32
    while idx < _48:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _48
    mem[mem[64] + 64 len 32 * _48] = mem[_45 + ceil32(return_data.size) + 32 len 32 * _48]
    return Array(len=_48, data=mem[mem[64] + 64 len 32 * _48])
}

function sub_36888411(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == ext_call.return_data[0]:
        return arg1
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if arg1 and 1 > -1 / arg1:
                revert with 'NH{q', 17
            return arg1
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if 10^ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            if arg1 and 10^ext_call.return_data[0] > -1 / arg1:
                revert with 'NH{q', 17
            return (arg1 * 10^ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[0]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg1 and t * s > -1 / arg1:
            revert with 'NH{q', 17
        return (arg1 * t * s)
    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
        if 10^ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            if arg1 and 1 > -1 / arg1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (arg1 / 10^ext_call.return_data[0])
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if 10^ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            if arg1 and 10^ext_call.return_data[0] > -1 / arg1:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[0]:
                revert with 'NH{q', 18
            return (arg1 * 10^ext_call.return_data[0] / 10^ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[0]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg1 and t * s > -1 / arg1:
            revert with 'NH{q', 17
        if not 10^ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (arg1 * t * s / 10^ext_call.return_data[0])
    s = 10
    t = 1
    idx = ext_call.return_data[0]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        return (arg1 / t * s)
    if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
        if 10^ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        if arg1 and 10^ext_call.return_data[0] > -1 / arg1:
            revert with 'NH{q', 17
        if not t * s:
            revert with 'NH{q', 18
        return (arg1 * 10^ext_call.return_data[0] / t * s)
    u = 10
    v = 1
    idx = ext_call.return_data[0]
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if arg1 and v * u > -1 / arg1:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (arg1 * v * u / t * s)
}

function sub_9ead80fd(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (192 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size - s >= 192
        _1097 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_1097] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_1097 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_1097 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_1097 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_1097 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_1097 + 160] = cd[(s + 160)]
        mem[t] = _1097
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[mem[128] + 12 len 20])
    call mem[mem[128] + 12 len 20].0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        mem[mem[64]] = 0x407045a800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        _1104 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        s = 128
        s = mem[64] + 100
        while ('cd', 36).length < _1104:
            _2270 = mem[cd[36] + (192 * ('cd', 36).length) + 36]
            mem[s] = mem[mem[cd[36] + (192 * ('cd', 36).length) + 36] + 12 len 20]
            mem[s + 32] = mem[_2270 + 44 len 20]
            mem[s + 64] = mem[_2270 + 76 len 20]
            mem[s + 96] = mem[_2270 + 108 len 20]
            mem[s + 128] = mem[_2270 + 128]
            mem[s + 160] = mem[_2270 + 160]
            s = ('cd', 36).length + 1
            s = cd[36] + (192 * ('cd', 36).length) + 68
            s = s + 192
            continue 
        require ext_code.size(sub_5b1c8c3aAddress)
        staticcall sub_5b1c8c3aAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len s + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2276 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2278 = mem[_2276]
        require mem[_2276] <= test266151307()
        require _2276 + mem[_2276] + 31 < _2276 + return_data.size
        _2282 = mem[_2276 + mem[_2276]]
        if mem[_2276 + mem[_2276]] > test266151307():
            revert with 'NH{q', 65
        if _2276 + ceil32(return_data.size) + floor32(mem[_2276 + mem[_2276]]) + 1 > test266151307() or floor32(mem[_2276 + mem[_2276]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2276 + ceil32(return_data.size) + floor32(mem[_2276 + mem[_2276]]) + 1
        mem[_2276 + ceil32(return_data.size)] = _2282
        require _2278 + (32 * _2282) + 32 <= return_data.size
        idx = 0
        s = _2276 + _2278 + 32
        t = _2276 + ceil32(return_data.size) + 32
        while idx < _2282:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _4582 = mem[96]
        idx = 0
        while idx < _4582:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _4587 = mem[(32 * idx) + 128]
            if idx >= mem[_2276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            _4592 = mem[(32 * idx) + _2276 + ceil32(return_data.size) + 32]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            _4598 = mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _4605 = mem[mem[(32 * idx) + 128] + 64]
                _4606 = mem[mem[(32 * idx) + 128]]
                _4607 = mem[mem[(32 * idx) + 128] + 32]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 76 len 20]
                mem[mem[64] + 36] = _4592
                require ext_code.size(address(_4606))
                call address(_4606).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _4592
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4743] == bool(mem[_4743])
                if address(_4606) < address(_4607):
                    if address(_4606) == address(_4606):
                        _4871 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4871 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4871 + 36] = 0
                        mem[_4871 + 68] = _4598
                        mem[_4871 + 100] = this.address
                        mem[_4871 + 132] = 128
                        mem[_4871 + 164] = mem[_4871]
                        s = 0
                        while s < mem[_4871]:
                            mem[_4871 + s + 196] = mem[_4871 + s + 32]
                            _4582 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_4871]) <= mem[_4871]:
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4598, address(this.address), 128, mem[_4871], mem[_4871 + 196 len ceil32(mem[_4871])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5845 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4871 + 36] = this.address
                                    require ext_code.size(address(_5845))
                                    staticcall address(_5845).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4871 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4871 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4871 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4871 + 36] = 0
                                mem[_4871 + 68] = _4598
                                mem[_4871 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _4598, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6046 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4871 + 36] = this.address
                                    require ext_code.size(address(_6046))
                                    staticcall address(_6046).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4871 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4871 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4871 + mem[_4871] + 196] = 0
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4598, address(this.address), 128, mem[_4871], mem[_4871 + 196 len ceil32(mem[_4871])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5877 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4871 + 36] = this.address
                                    require ext_code.size(address(_5877))
                                    staticcall address(_5877).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4871 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4871 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4871 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4871 + 36] = 0
                                mem[_4871 + 68] = _4598
                                mem[_4871 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _4598, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6079 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4871 + 36] = this.address
                                    require ext_code.size(address(_6079))
                                    staticcall address(_6079).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4871 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4871 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        _4872 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4872 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4872 + 36] = _4598
                        mem[_4872 + 68] = 0
                        mem[_4872 + 100] = this.address
                        mem[_4872 + 132] = 128
                        mem[_4872 + 164] = mem[_4872]
                        s = 0
                        while s < mem[_4872]:
                            mem[_4872 + s + 196] = mem[_4872 + s + 32]
                            _4582 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_4872]) <= mem[_4872]:
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4598, 0, address(this.address), 128, mem[_4872], mem[_4872 + 196 len ceil32(mem[_4872])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5849 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4872 + 36] = this.address
                                    require ext_code.size(address(_5849))
                                    staticcall address(_5849).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4872 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4872 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4872 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4872 + 36] = _4598
                                mem[_4872 + 68] = 0
                                mem[_4872 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _4598, 0, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6050 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4872 + 36] = this.address
                                    require ext_code.size(address(_6050))
                                    staticcall address(_6050).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4872 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4872 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4872 + mem[_4872] + 196] = 0
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4598, 0, address(this.address), 128, mem[_4872], mem[_4872 + 196 len ceil32(mem[_4872])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5880 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4872 + 36] = this.address
                                    require ext_code.size(address(_5880))
                                    staticcall address(_5880).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4872 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4872 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4872 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4872 + 36] = _4598
                                mem[_4872 + 68] = 0
                                mem[_4872 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _4598, 0, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6082 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4872 + 36] = this.address
                                    require ext_code.size(address(_6082))
                                    staticcall address(_6082).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4872 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4872 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                else:
                    if address(_4606) == address(_4607):
                        _4873 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4873 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4873 + 36] = 0
                        mem[_4873 + 68] = _4598
                        mem[_4873 + 100] = this.address
                        mem[_4873 + 132] = 128
                        mem[_4873 + 164] = mem[_4873]
                        s = 0
                        while s < mem[_4873]:
                            mem[_4873 + s + 196] = mem[_4873 + s + 32]
                            _4582 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_4873]) <= mem[_4873]:
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4598, address(this.address), 128, mem[_4873], mem[_4873 + 196 len ceil32(mem[_4873])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5853 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4873 + 36] = this.address
                                    require ext_code.size(address(_5853))
                                    staticcall address(_5853).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4873 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4873 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4873 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4873 + 36] = 0
                                mem[_4873 + 68] = _4598
                                mem[_4873 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _4598, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6054 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4873 + 36] = this.address
                                    require ext_code.size(address(_6054))
                                    staticcall address(_6054).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4873 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4873 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4873 + mem[_4873] + 196] = 0
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _4598, address(this.address), 128, mem[_4873], mem[_4873 + 196 len ceil32(mem[_4873])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5883 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4873 + 36] = this.address
                                    require ext_code.size(address(_5883))
                                    staticcall address(_5883).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4873 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4873 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4873 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4873 + 36] = 0
                                mem[_4873 + 68] = _4598
                                mem[_4873 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args 0, _4598, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6085 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4873 + 36] = this.address
                                    require ext_code.size(address(_6085))
                                    staticcall address(_6085).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4873 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4873 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        _4874 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_4874 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_4874 + 36] = _4598
                        mem[_4874 + 68] = 0
                        mem[_4874 + 100] = this.address
                        mem[_4874 + 132] = 128
                        mem[_4874 + 164] = mem[_4874]
                        s = 0
                        while s < mem[_4874]:
                            mem[_4874 + s + 196] = mem[_4874 + s + 32]
                            _4582 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(mem[_4874]) <= mem[_4874]:
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4598, 0, address(this.address), 128, mem[_4874], mem[_4874 + 196 len ceil32(mem[_4874])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5857 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4874 + 36] = this.address
                                    require ext_code.size(address(_5857))
                                    staticcall address(_5857).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4874 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4874 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4874 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4874 + 36] = _4598
                                mem[_4874 + 68] = 0
                                mem[_4874 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _4598, 0, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6058 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4874 + 36] = this.address
                                    require ext_code.size(address(_6058))
                                    staticcall address(_6058).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4874 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4874 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4874 + mem[_4874] + 196] = 0
                            require ext_code.size(address(_4605))
                            call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _4598, 0, address(this.address), 128, mem[_4874], mem[_4874 + 196 len ceil32(mem[_4874])]
                            if ext_call.success:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5886 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4874 + 36] = this.address
                                    require ext_code.size(address(_5886))
                                    staticcall address(_5886).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4874 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4874 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            else:
                                mem[_4874 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[_4874 + 36] = _4598
                                mem[_4874 + 68] = 0
                                mem[_4874 + 100] = this.address
                                require ext_code.size(address(_4605))
                                call address(_4605).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args _4598, 0, this.address
                                require ext_call.success
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6088 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[_4874 + 36] = this.address
                                    require ext_code.size(address(_6088))
                                    staticcall address(_6088).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_4874 + 32] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4874 + ceil32(return_data.size) + 32
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
            else:
                if mem[mem[(32 * idx) + 128] + 160] == 5:
                    _4614 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                    mem[mem[64] + 36] = _4592
                    require ext_code.size(address(_4614))
                    call address(_4614).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _4592
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4737] == bool(mem[_4737])
                    _4777 = mem[_4587 + 96]
                    _4794 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_4794 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_4794]:
                        revert with 'NH{q', 50
                    mem[_4794 + 32] = mem[_4587 + 12 len 20]
                    if 1 >= mem[_4794]:
                        revert with 'NH{q', 50
                    mem[_4794 + 64] = mem[_4587 + 44 len 20]
                    mem[_4794 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_4794 + 100] = _4592
                    mem[_4794 + 132] = 0
                    mem[_4794 + 164] = 160
                    mem[_4794 + 260] = mem[_4794]
                    s = 0
                    t = _4794 + 32
                    u = _4794 + 292
                    while s < mem[_4794]:
                        mem[u] = mem[t + 12 len 20]
                        _4582 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_4794 + 196] = this.address
                    mem[_4794 + 228] = block.timestamp
                    require ext_code.size(address(_4777))
                    call address(_4777).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4794 + (32 * mem[_4794]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5784 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5818 = mem[_5784]
                    require mem[_5784] <= test266151307()
                    require _5784 + mem[_5784] + 31 < _5784 + return_data.size
                    _5900 = mem[_5784 + mem[_5784]]
                    if mem[_5784 + mem[_5784]] > test266151307():
                        revert with 'NH{q', 65
                    if _5784 + ceil32(return_data.size) + floor32(mem[_5784 + mem[_5784]]) + 1 > test266151307() or floor32(mem[_5784 + mem[_5784]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _5784 + ceil32(return_data.size) + floor32(mem[_5784 + mem[_5784]]) + 1
                    mem[_5784 + ceil32(return_data.size)] = _5900
                    require _5818 + (32 * _5900) + 32 <= return_data.size
                    s = 0
                    t = _5784 + _5818 + 32
                    u = _5784 + ceil32(return_data.size) + 32
                    while s < _5900:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        _4582 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _6267 = mem[mem[(32 * idx) + 128] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_6267))
                        staticcall address(_6267).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6288] == mem[_6288]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_6288]
                else:
                    if mem[mem[(32 * idx) + 128] + 160] == 7:
                        _4623 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                        mem[mem[64] + 36] = _4592
                        require ext_code.size(address(_4623))
                        call address(_4623).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _4592
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4742] == bool(mem[_4742])
                        mem[0] = mem[_4587 + 108 len 20]
                        mem[32] = 0
                        _4785 = sha3(mem[0], 0)
                        mem[0] = mem[_4587 + 12 len 20]
                        _4787 = sha3(mem[0], _4785)
                        mem[0] = mem[_4587 + 108 len 20]
                        mem[32] = 0
                        _4789 = sha3(mem[0], 0)
                        mem[0] = mem[_4587 + 44 len 20]
                        mem[32] = _4789
                        _4792 = mem[_4587 + 96]
                        mem[mem[64]] = 0x9169558600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint8(stor[_4787])
                        mem[mem[64] + 36] = uint8(stor[_4789][mem[0]])
                        mem[mem[64] + 68] = _4592
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(_4792))
                        call address(_4792).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args uint8(stor[_4787]), uint8(stor[_4789][mem[0]]), _4592, 0, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + 128] + 160] != 1:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _4991 = mem[mem[(32 * idx) + 128] + 32]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_4991))
                            staticcall address(_4991).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5102] == mem[_5102]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5102]
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] < 80:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                if mem[mem[(32 * idx) + 128] + 160] == 13:
                                    _4657 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                    mem[mem[64] + 36] = _4592
                                    require ext_code.size(address(_4657))
                                    call address(_4657).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _4592
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4760 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4760] == bool(mem[_4760])
                                    _4824 = mem[_4587 + 96]
                                    _4826 = mem[_4587 + 32]
                                    mem[mem[64] + 4] = mem[_4587 + 12 len 20]
                                    mem[mem[64] + 36] = address(_4826)
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_4824))
                                    call address(_4824).swap(address arg1, address arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_4826), this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4952 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4952] == mem[_4952]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5165 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5165))
                                        staticcall address(_5165).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5354 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5354] == mem[_5354]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5354]
                                else:
                                    require mem[mem[(32 * idx) + 128] + 160] == 14
                                    _4668 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                    mem[mem[64] + 36] = _4592
                                    require ext_code.size(address(_4668))
                                    call address(_4668).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _4592
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4764 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4764] == bool(mem[_4764])
                                    _4834 = mem[_4587 + 96]
                                    _4835 = mem[_4587]
                                    _4836 = mem[_4587 + 32]
                                    mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_4835)
                                    mem[mem[64] + 36] = address(_4836)
                                    mem[mem[64] + 68] = _4592
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(_4834))
                                    call address(_4834).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(_4835), address(_4836), _4592, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5307 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5307))
                                        staticcall address(_5307).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5430 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5430] == mem[_5430]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5430]
                            else:
                                _4645 = mem[64]
                                mem[mem[64]] = 1
                                mem[64] = mem[64] + 64
                                mem[_4645 + 32] = call.data[calldata.size]
                                if 0 >= mem[_4645]:
                                    revert with 'NH{q', 50
                                mem[_4645 + 32] = mem[_4587 + 76 len 20]
                                mem[_4645 + 64] = 2
                                mem[64] = _4645 + 160
                                mem[_4645 + 96 len 64] = call.data[calldata.size len 64]
                                mem[_4645 + 96] = mem[_4587 + 12 len 20]
                                mem[_4645 + 128] = mem[_4587 + 44 len 20]
                                _4720 = mem[_4587]
                                _4721 = mem[_4587 + 96]
                                mem[_4645 + 164] = mem[_4587 + 108 len 20]
                                mem[_4645 + 196] = _4592
                                require ext_code.size(address(_4720))
                                call address(_4720).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(_4721), _4592
                                mem[_4645 + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4645 + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _4908 = mem[_4587 + 96]
                                mem[_4645 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                mem[_4645 + ceil32(return_data.size) + 164] = _4592
                                mem[_4645 + ceil32(return_data.size) + 196] = 0
                                mem[_4645 + ceil32(return_data.size) + 228] = 192
                                mem[_4645 + ceil32(return_data.size) + 356] = mem[_4645]
                                s = 0
                                t = _4645 + 32
                                u = _4645 + ceil32(return_data.size) + 388
                                while s < mem[_4645]:
                                    mem[u] = mem[t + 12 len 20]
                                    _4582 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_4645 + ceil32(return_data.size) + 260] = (32 * mem[_4645]) + 224
                                mem[_4645 + ceil32(return_data.size) + (32 * mem[_4645]) + 388] = 2
                                s = 0
                                t = _4645 + 96
                                u = _4645 + ceil32(return_data.size) + (32 * mem[_4645]) + 420
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _4582 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_4645 + ceil32(return_data.size) + 292] = this.address
                                mem[_4645 + ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(address(_4908))
                                call address(_4908).0xceb757d5 with:
                                     gas gas_remaining wei
                                    args _4592, 0, 192, (32 * mem[_4645]) + 224, address(this.address), block.timestamp, mem[_4645 + ceil32(return_data.size) + 356 len (32 * mem[_4645]) + 32], 2, mem[_4645 + ceil32(return_data.size) + (32 * mem[_4645]) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_4645 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _4645 + (2 * ceil32(return_data.size)) + 160
                                require return_data.size >= 32
                                _6280 = mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32
                                require mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 <= test266151307()
                                require _4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 191 < _4645 + ceil32(return_data.size) + return_data.size + 160
                                _6286 = mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]
                                if mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160] > test266151307():
                                    revert with 'NH{q', 65
                                if _4645 + (2 * ceil32(return_data.size)) + floor32(mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 161 > test266151307() or floor32(mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _4645 + (2 * ceil32(return_data.size)) + floor32(mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 161
                                mem[_4645 + (2 * ceil32(return_data.size)) + 160] = mem[_4645 + ceil32(return_data.size) + mem[_4645 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]
                                require _6280 + (32 * _6286) + 32 <= return_data.size
                                s = 0
                                t = _4645 + ceil32(return_data.size) + _6280 + 192
                                u = _4645 + (2 * ceil32(return_data.size)) + 192
                                while s < _6286:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _4582 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6369 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_6369))
                                    staticcall address(_6369).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6384 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6384] == mem[_6384]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_6384]
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] < 90:
                                _4639 = mem[mem[(32 * idx) + 128] + 32]
                                _4647 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                                _4648 = sha3(address(mem[mem[(32 * idx) + 128] + 64]), 0)
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 64]), 0)
                                require uint256(stor[_4647]) != uint256(stor[_4648][address(_4639)])
                                _4677 = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                mem[mem[64] + 36] = _4592
                                require ext_code.size(address(_4677))
                                call address(_4677).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _4592
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4766] == bool(mem[_4766])
                                if mem[_4587 + 160] == 81:
                                    _4859 = mem[_4587 + 96]
                                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4647'))))
                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648')))))
                                    mem[mem[64] + 68] = _4592
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(_4859))
                                    call address(_4859).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args ('signextend', 15, ('type', 256, ('stor', ('var', '_4647')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648'))))), _4592, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5021 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5021))
                                        staticcall address(_5021).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5169 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5169] == mem[_5169]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5169]
                                else:
                                    if mem[_4587 + 160] == 82:
                                        _4869 = mem[_4587 + 96]
                                        mem[mem[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(stor[_4647])
                                        mem[mem[64] + 36] = uint256(stor[_4648][address(_4639)])
                                        mem[mem[64] + 68] = _4592
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(_4869))
                                        call address(_4869).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args uint256(stor[_4647]), uint256(stor[_4648][address(_4639)]), _4592, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + 128] + 160] != 1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            _5054 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_5054))
                                            staticcall address(_5054).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5246 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5246] == mem[_5246]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5246]
                                    else:
                                        if mem[_4587 + 160] == 83:
                                            _4883 = mem[_4587 + 96]
                                            mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4647'))))
                                            mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648')))))
                                            mem[mem[64] + 68] = _4592
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(_4883))
                                            call address(_4883).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args ('signextend', 15, ('type', 256, ('stor', ('var', '_4647')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648'))))), _4592, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _5084 = mem[mem[(32 * idx) + 128] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_5084))
                                                staticcall address(_5084).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5289 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5289] == mem[_5289]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5289]
                                        else:
                                            if mem[_4587 + 160] == 84:
                                                _4897 = mem[_4587 + 96]
                                                mem[mem[64]] = 0x65b2489b00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = uint256(stor[_4647])
                                                mem[mem[64] + 36] = uint256(stor[_4648][address(_4639)])
                                                mem[mem[64] + 68] = _4592
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(_4897))
                                                call address(_4897).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args uint256(stor[_4647]), uint256(stor[_4648][address(_4639)]), _4592, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    _5109 = mem[mem[(32 * idx) + 128] + 32]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(_5109))
                                                    staticcall address(_5109).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5311 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5311] == mem[_5311]
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5311]
                                            else:
                                                if mem[_4587 + 160] != 85:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        _4927 = mem[mem[(32 * idx) + 128] + 32]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(_4927))
                                                        staticcall address(_4927).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4989 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4989] == mem[_4989]
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_4989]
                                                else:
                                                    _4902 = mem[_4587 + 96]
                                                    _4903 = mem[_4587 + 64]
                                                    mem[mem[64]] = 0x7981c43e00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(_4903)
                                                    mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4647'))))
                                                    mem[mem[64] + 68] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648')))))
                                                    mem[mem[64] + 100] = _4592
                                                    mem[mem[64] + 132] = 0
                                                    require ext_code.size(address(_4902))
                                                    call address(_4902).0x7981c43e with:
                                                         gas gas_remaining wei
                                                        args address(_4903), ('signextend', 15, ('type', 256, ('stor', ('var', '_4647')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4639')), ('var', '_4648'))))), _4592, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                        if idx >= mem[96]:
                                                            revert with 'NH{q', 50
                                                        _5286 = mem[mem[(32 * idx) + 128] + 32]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(_5286))
                                                        staticcall address(_5286).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5407 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5407] == mem[_5407]
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5407]
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    if mem[mem[(32 * idx) + 128] + 160] == 13:
                                        _4674 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                        mem[mem[64] + 36] = _4592
                                        require ext_code.size(address(_4674))
                                        call address(_4674).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4592
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4765 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4765] == bool(mem[_4765])
                                        _4838 = mem[_4587 + 96]
                                        _4840 = mem[_4587 + 32]
                                        mem[mem[64] + 4] = mem[_4587 + 12 len 20]
                                        mem[mem[64] + 36] = address(_4840)
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_4838))
                                        call address(_4838).swap(address arg1, address arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_4840), this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4956 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4956] == mem[_4956]
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + 128] + 160] != 1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            _5201 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_5201))
                                            staticcall address(_5201).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5374 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5374] == mem[_5374]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5374]
                                    else:
                                        require mem[mem[(32 * idx) + 128] + 160] == 14
                                        _4692 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                        mem[mem[64] + 36] = _4592
                                        require ext_code.size(address(_4692))
                                        call address(_4692).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4592
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4770] == bool(mem[_4770])
                                        _4854 = mem[_4587 + 96]
                                        _4855 = mem[_4587]
                                        _4856 = mem[_4587 + 32]
                                        mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(_4855)
                                        mem[mem[64] + 36] = address(_4856)
                                        mem[mem[64] + 68] = _4592
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(address(_4854))
                                        call address(_4854).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(_4855), address(_4856), _4592, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + 128] + 160] != 1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            _5319 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_5319))
                                            staticcall address(_5319).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5432 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5432] == mem[_5432]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_5432]
                                else:
                                    _4661 = mem[64]
                                    mem[mem[64]] = 1
                                    mem[64] = mem[64] + 64
                                    mem[_4661 + 32] = call.data[calldata.size]
                                    if 0 >= mem[_4661]:
                                        revert with 'NH{q', 50
                                    mem[_4661 + 32] = mem[_4587 + 76 len 20]
                                    mem[_4661 + 64] = 2
                                    mem[64] = _4661 + 160
                                    mem[_4661 + 96 len 64] = call.data[calldata.size len 64]
                                    mem[_4661 + 96] = mem[_4587 + 12 len 20]
                                    mem[_4661 + 128] = mem[_4587 + 44 len 20]
                                    _4734 = mem[_4587]
                                    _4735 = mem[_4587 + 96]
                                    mem[_4661 + 164] = mem[_4587 + 108 len 20]
                                    mem[_4661 + 196] = _4592
                                    require ext_code.size(address(_4734))
                                    call address(_4734).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(_4735), _4592
                                    mem[_4661 + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4661 + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    _4912 = mem[_4587 + 96]
                                    mem[_4661 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                    mem[_4661 + ceil32(return_data.size) + 164] = _4592
                                    mem[_4661 + ceil32(return_data.size) + 196] = 0
                                    mem[_4661 + ceil32(return_data.size) + 228] = 192
                                    mem[_4661 + ceil32(return_data.size) + 356] = mem[_4661]
                                    s = 0
                                    t = _4661 + 32
                                    u = _4661 + ceil32(return_data.size) + 388
                                    while s < mem[_4661]:
                                        mem[u] = mem[t + 12 len 20]
                                        _4582 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_4661 + ceil32(return_data.size) + 260] = (32 * mem[_4661]) + 224
                                    mem[_4661 + ceil32(return_data.size) + (32 * mem[_4661]) + 388] = 2
                                    s = 0
                                    t = _4661 + 96
                                    u = _4661 + ceil32(return_data.size) + (32 * mem[_4661]) + 420
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _4582 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_4661 + ceil32(return_data.size) + 292] = this.address
                                    mem[_4661 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(address(_4912))
                                    call address(_4912).0xceb757d5 with:
                                         gas gas_remaining wei
                                        args _4592, 0, 192, (32 * mem[_4661]) + 224, address(this.address), block.timestamp, mem[_4661 + ceil32(return_data.size) + 356 len (32 * mem[_4661]) + 32], 2, mem[_4661 + ceil32(return_data.size) + (32 * mem[_4661]) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_4661 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4661 + (2 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _6281 = mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32
                                    require mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 <= test266151307()
                                    require _4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 191 < _4661 + ceil32(return_data.size) + return_data.size + 160
                                    _6287 = mem[_4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]
                                    if mem[_4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160] > test266151307():
                                        revert with 'NH{q', 65
                                    if _4661 + (2 * ceil32(return_data.size)) + floor32(mem[_4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 161 > test266151307() or floor32(mem[_4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _4661 + (2 * ceil32(return_data.size)) + floor32(mem[_4661 + ceil32(return_data.size) + mem[_4661 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4592) >> 32 + 160]) + 161
                                    mem[_4661 + (2 * ceil32(return_data.size)) + 160] = _6287
                                    require _6281 + (32 * _6287) + 32 <= return_data.size
                                    s = 0
                                    t = _4661 + ceil32(return_data.size) + _6281 + 192
                                    u = _4661 + (2 * ceil32(return_data.size)) + 192
                                    while s < _6287:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        _4582 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _6372 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_6372))
                                        staticcall address(_6372).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6385 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6385] == mem[_6385]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2276 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2276 + ceil32(return_data.size) + 32] = mem[_6385]
            if idx == -1:
                revert with 'NH{q', 17
            _4582 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _4594 = mem[_2276 + ceil32(return_data.size)]
        mem[mem[64] + 32] = mem[_2276 + ceil32(return_data.size)]
        mem[mem[64] + 64 len 32 * _4594] = mem[_2276 + ceil32(return_data.size) + 32 len 32 * _4594]
        return 32, mem[mem[64] + 32 len (32 * _4594) + 32]
    _1103 = mem[64]
    mem[mem[64]] = 0x407045a800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 64
    _1105 = mem[96]
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < _1105:
        _2271 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2271 + 44 len 20]
        mem[t + 64] = mem[_2271 + 76 len 20]
        mem[t + 96] = mem[_2271 + 108 len 20]
        mem[t + 128] = mem[_2271 + 128]
        mem[t + 160] = mem[_2271 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    require ext_code.size(sub_5b1c8c3aAddress)
    staticcall sub_5b1c8c3aAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1103 + (192 * _1105) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2277 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2279 = mem[_2277]
    require mem[_2277] <= test266151307()
    require _2277 + mem[_2277] + 31 < _2277 + return_data.size
    _2283 = mem[_2277 + mem[_2277]]
    if mem[_2277 + mem[_2277]] > test266151307():
        revert with 'NH{q', 65
    if _2277 + ceil32(return_data.size) + floor32(mem[_2277 + mem[_2277]]) + 1 > test266151307() or floor32(mem[_2277 + mem[_2277]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _2277 + ceil32(return_data.size) + floor32(mem[_2277 + mem[_2277]]) + 1
    mem[_2277 + ceil32(return_data.size)] = _2283
    require _2279 + (32 * _2283) + 32 <= return_data.size
    idx = 0
    s = _2277 + _2279 + 32
    t = _2277 + ceil32(return_data.size) + 32
    while idx < _2283:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _4583 = mem[96]
    idx = 0
    while idx < _4583:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _4590 = mem[(32 * idx) + 128]
        if idx >= mem[_2277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _4593 = mem[(32 * idx) + _2277 + ceil32(return_data.size) + 32]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _4599 = mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _4609 = mem[mem[(32 * idx) + 128] + 64]
            _4610 = mem[mem[(32 * idx) + 128]]
            _4611 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 76 len 20]
            mem[mem[64] + 36] = _4593
            require ext_code.size(address(_4610))
            call address(_4610).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _4593
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4745 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4745] == bool(mem[_4745])
            if address(_4610) < address(_4611):
                if address(_4610) == address(_4610):
                    _4878 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4878 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4878 + 36] = 0
                    mem[_4878 + 68] = _4599
                    mem[_4878 + 100] = this.address
                    mem[_4878 + 132] = 128
                    mem[_4878 + 164] = mem[_4878]
                    s = 0
                    while s < mem[_4878]:
                        mem[_4878 + s + 196] = mem[_4878 + s + 32]
                        _4583 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4878]) <= mem[_4878]:
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _4599, address(this.address), 128, mem[_4878], mem[_4878 + 196 len ceil32(mem[_4878])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5861 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4878 + 36] = this.address
                                require ext_code.size(address(_5861))
                                staticcall address(_5861).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4878 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4878 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4878 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4878 + 36] = 0
                            mem[_4878 + 68] = _4599
                            mem[_4878 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _4599, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6063 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4878 + 36] = this.address
                                require ext_code.size(address(_6063))
                                staticcall address(_6063).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4878 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4878 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        mem[_4878 + mem[_4878] + 196] = 0
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _4599, address(this.address), 128, mem[_4878], mem[_4878 + 196 len ceil32(mem[_4878])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5889 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4878 + 36] = this.address
                                require ext_code.size(address(_5889))
                                staticcall address(_5889).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4878 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4878 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4878 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4878 + 36] = 0
                            mem[_4878 + 68] = _4599
                            mem[_4878 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _4599, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6091 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4878 + 36] = this.address
                                require ext_code.size(address(_6091))
                                staticcall address(_6091).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4878 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4878 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                else:
                    _4879 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4879 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4879 + 36] = _4599
                    mem[_4879 + 68] = 0
                    mem[_4879 + 100] = this.address
                    mem[_4879 + 132] = 128
                    mem[_4879 + 164] = mem[_4879]
                    s = 0
                    while s < mem[_4879]:
                        mem[_4879 + s + 196] = mem[_4879 + s + 32]
                        _4583 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4879]) <= mem[_4879]:
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _4599, 0, address(this.address), 128, mem[_4879], mem[_4879 + 196 len ceil32(mem[_4879])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5865 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4879 + 36] = this.address
                                require ext_code.size(address(_5865))
                                staticcall address(_5865).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4879 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4879 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4879 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4879 + 36] = _4599
                            mem[_4879 + 68] = 0
                            mem[_4879 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _4599, 0, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6067 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4879 + 36] = this.address
                                require ext_code.size(address(_6067))
                                staticcall address(_6067).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4879 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4879 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        mem[_4879 + mem[_4879] + 196] = 0
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _4599, 0, address(this.address), 128, mem[_4879], mem[_4879 + 196 len ceil32(mem[_4879])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5892 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4879 + 36] = this.address
                                require ext_code.size(address(_5892))
                                staticcall address(_5892).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4879 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4879 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4879 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4879 + 36] = _4599
                            mem[_4879 + 68] = 0
                            mem[_4879 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _4599, 0, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6094 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4879 + 36] = this.address
                                require ext_code.size(address(_6094))
                                staticcall address(_6094).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4879 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4879 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
            else:
                if address(_4610) == address(_4611):
                    _4880 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4880 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4880 + 36] = 0
                    mem[_4880 + 68] = _4599
                    mem[_4880 + 100] = this.address
                    mem[_4880 + 132] = 128
                    mem[_4880 + 164] = mem[_4880]
                    s = 0
                    while s < mem[_4880]:
                        mem[_4880 + s + 196] = mem[_4880 + s + 32]
                        _4583 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4880]) <= mem[_4880]:
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _4599, address(this.address), 128, mem[_4880], mem[_4880 + 196 len ceil32(mem[_4880])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5869 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4880 + 36] = this.address
                                require ext_code.size(address(_5869))
                                staticcall address(_5869).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4880 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4880 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4880 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4880 + 36] = 0
                            mem[_4880 + 68] = _4599
                            mem[_4880 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _4599, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6071 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4880 + 36] = this.address
                                require ext_code.size(address(_6071))
                                staticcall address(_6071).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4880 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4880 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        mem[_4880 + mem[_4880] + 196] = 0
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _4599, address(this.address), 128, mem[_4880], mem[_4880 + 196 len ceil32(mem[_4880])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5895 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4880 + 36] = this.address
                                require ext_code.size(address(_5895))
                                staticcall address(_5895).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4880 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4880 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4880 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4880 + 36] = 0
                            mem[_4880 + 68] = _4599
                            mem[_4880 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args 0, _4599, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6097 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4880 + 36] = this.address
                                require ext_code.size(address(_6097))
                                staticcall address(_6097).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4880 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4880 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                else:
                    _4881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_4881 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_4881 + 36] = _4599
                    mem[_4881 + 68] = 0
                    mem[_4881 + 100] = this.address
                    mem[_4881 + 132] = 128
                    mem[_4881 + 164] = mem[_4881]
                    s = 0
                    while s < mem[_4881]:
                        mem[_4881 + s + 196] = mem[_4881 + s + 32]
                        _4583 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_4881]) <= mem[_4881]:
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _4599, 0, address(this.address), 128, mem[_4881], mem[_4881 + 196 len ceil32(mem[_4881])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5873 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4881 + 36] = this.address
                                require ext_code.size(address(_5873))
                                staticcall address(_5873).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4881 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4881 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4881 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4881 + 36] = _4599
                            mem[_4881 + 68] = 0
                            mem[_4881 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _4599, 0, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6075 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4881 + 36] = this.address
                                require ext_code.size(address(_6075))
                                staticcall address(_6075).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4881 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4881 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    else:
                        mem[_4881 + mem[_4881] + 196] = 0
                        require ext_code.size(address(_4609))
                        call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _4599, 0, address(this.address), 128, mem[_4881], mem[_4881 + 196 len ceil32(mem[_4881])]
                        if ext_call.success:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _5898 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4881 + 36] = this.address
                                require ext_code.size(address(_5898))
                                staticcall address(_5898).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4881 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4881 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        else:
                            mem[_4881 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[_4881 + 36] = _4599
                            mem[_4881 + 68] = 0
                            mem[_4881 + 100] = this.address
                            require ext_code.size(address(_4609))
                            call address(_4609).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                 gas gas_remaining wei
                                args _4599, 0, this.address
                            require ext_call.success
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6100 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_4881 + 36] = this.address
                                require ext_code.size(address(_6100))
                                staticcall address(_6100).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_4881 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4881 + ceil32(return_data.size) + 32
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
        else:
            if mem[mem[(32 * idx) + 128] + 160] == 5:
                _4619 = mem[mem[(32 * idx) + 128]]
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                mem[mem[64] + 36] = _4593
                require ext_code.size(address(_4619))
                call address(_4619).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _4593
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4741] == bool(mem[_4741])
                _4781 = mem[_4590 + 96]
                _4807 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_4807 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_4807]:
                    revert with 'NH{q', 50
                mem[_4807 + 32] = mem[_4590 + 12 len 20]
                if 1 >= mem[_4807]:
                    revert with 'NH{q', 50
                mem[_4807 + 64] = mem[_4590 + 44 len 20]
                mem[_4807 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_4807 + 100] = _4593
                mem[_4807 + 132] = 0
                mem[_4807 + 164] = 160
                mem[_4807 + 260] = mem[_4807]
                s = 0
                t = _4807 + 32
                u = _4807 + 292
                while s < mem[_4807]:
                    mem[u] = mem[t + 12 len 20]
                    _4583 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_4807 + 196] = this.address
                mem[_4807 + 228] = block.timestamp
                require ext_code.size(address(_4781))
                call address(_4781).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _4807 + (32 * mem[_4807]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5789 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5831 = mem[_5789]
                require mem[_5789] <= test266151307()
                require _5789 + mem[_5789] + 31 < _5789 + return_data.size
                _5901 = mem[_5789 + mem[_5789]]
                if mem[_5789 + mem[_5789]] > test266151307():
                    revert with 'NH{q', 65
                if _5789 + ceil32(return_data.size) + floor32(mem[_5789 + mem[_5789]]) + 1 > test266151307() or floor32(mem[_5789 + mem[_5789]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _5789 + ceil32(return_data.size) + floor32(mem[_5789 + mem[_5789]]) + 1
                mem[_5789 + ceil32(return_data.size)] = _5901
                require _5831 + (32 * _5901) + 32 <= return_data.size
                s = 0
                t = _5789 + _5831 + 32
                u = _5789 + ceil32(return_data.size) + 32
                while s < _5901:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _4583 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + 128] + 160] != 1:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _6270 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_6270))
                    staticcall address(_6270).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6291] == mem[_6291]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_6291]
            else:
                if mem[mem[(32 * idx) + 128] + 160] == 7:
                    _4628 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                    mem[mem[64] + 36] = _4593
                    require ext_code.size(address(_4628))
                    call address(_4628).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _4593
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4744] == bool(mem[_4744])
                    mem[0] = mem[_4590 + 108 len 20]
                    mem[32] = 0
                    _4798 = sha3(mem[0], 0)
                    mem[0] = mem[_4590 + 12 len 20]
                    _4800 = sha3(mem[0], _4798)
                    mem[0] = mem[_4590 + 108 len 20]
                    mem[32] = 0
                    _4802 = sha3(mem[0], 0)
                    mem[0] = mem[_4590 + 44 len 20]
                    mem[32] = _4802
                    _4805 = mem[_4590 + 96]
                    mem[mem[64]] = 0x9169558600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = uint8(stor[_4800])
                    mem[mem[64] + 36] = uint8(stor[_4802][mem[0]])
                    mem[mem[64] + 68] = _4593
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(_4805))
                    call address(_4805).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args uint8(stor[_4800]), uint8(stor[_4802][mem[0]]), _4593, 0, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _4996 = mem[mem[(32 * idx) + 128] + 32]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_4996))
                        staticcall address(_4996).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5106] == mem[_5106]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5106]
                else:
                    if mem[mem[(32 * idx) + 128] + 160] < 80:
                        if mem[mem[(32 * idx) + 128] + 160] != 12:
                            if mem[mem[(32 * idx) + 128] + 160] == 13:
                                _4663 = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                mem[mem[64] + 36] = _4593
                                require ext_code.size(address(_4663))
                                call address(_4663).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _4593
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4762 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4762] == bool(mem[_4762])
                                _4829 = mem[_4590 + 96]
                                _4831 = mem[_4590 + 32]
                                mem[mem[64] + 4] = mem[_4590 + 12 len 20]
                                mem[mem[64] + 36] = address(_4831)
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(_4829))
                                call address(_4829).swap(address arg1, address arg2, address arg3) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_4831), this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4954 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4954] == mem[_4954]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5183 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_5183))
                                    staticcall address(_5183).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5364 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5364] == mem[_5364]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5364]
                            else:
                                require mem[mem[(32 * idx) + 128] + 160] == 14
                                _4680 = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                mem[mem[64] + 36] = _4593
                                require ext_code.size(address(_4680))
                                call address(_4680).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _4593
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4767] == bool(mem[_4767])
                                _4844 = mem[_4590 + 96]
                                _4845 = mem[_4590]
                                _4846 = mem[_4590 + 32]
                                mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(_4845)
                                mem[mem[64] + 36] = address(_4846)
                                mem[mem[64] + 68] = _4593
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp
                                require ext_code.size(address(_4844))
                                call address(_4844).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(_4845), address(_4846), _4593, 0, address(this.address), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5313 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_5313))
                                    staticcall address(_5313).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5431 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5431] == mem[_5431]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5431]
                        else:
                            _4651 = mem[64]
                            mem[mem[64]] = 1
                            mem[64] = mem[64] + 64
                            mem[_4651 + 32] = call.data[calldata.size]
                            if 0 >= mem[_4651]:
                                revert with 'NH{q', 50
                            mem[_4651 + 32] = mem[_4590 + 76 len 20]
                            mem[_4651 + 64] = 2
                            mem[64] = _4651 + 160
                            mem[_4651 + 96 len 64] = call.data[calldata.size len 64]
                            mem[_4651 + 96] = mem[_4590 + 12 len 20]
                            mem[_4651 + 128] = mem[_4590 + 44 len 20]
                            _4727 = mem[_4590]
                            _4728 = mem[_4590 + 96]
                            mem[_4651 + 164] = mem[_4590 + 108 len 20]
                            mem[_4651 + 196] = _4593
                            require ext_code.size(address(_4727))
                            call address(_4727).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(_4728), _4593
                            mem[_4651 + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _4651 + ceil32(return_data.size) + 160
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            _4910 = mem[_4590 + 96]
                            mem[_4651 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                            mem[_4651 + ceil32(return_data.size) + 164] = _4593
                            mem[_4651 + ceil32(return_data.size) + 196] = 0
                            mem[_4651 + ceil32(return_data.size) + 228] = 192
                            mem[_4651 + ceil32(return_data.size) + 356] = mem[_4651]
                            s = 0
                            t = _4651 + 32
                            u = _4651 + ceil32(return_data.size) + 388
                            while s < mem[_4651]:
                                mem[u] = mem[t + 12 len 20]
                                _4583 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4651 + ceil32(return_data.size) + 260] = (32 * mem[_4651]) + 224
                            mem[_4651 + ceil32(return_data.size) + (32 * mem[_4651]) + 388] = 2
                            s = 0
                            t = _4651 + 96
                            u = _4651 + ceil32(return_data.size) + (32 * mem[_4651]) + 420
                            while s < 2:
                                mem[u] = mem[t + 12 len 20]
                                _4583 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_4651 + ceil32(return_data.size) + 292] = this.address
                            mem[_4651 + ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(address(_4910))
                            call address(_4910).0xceb757d5 with:
                                 gas gas_remaining wei
                                args _4593, 0, 192, (32 * mem[_4651]) + 224, address(this.address), block.timestamp, mem[_4651 + ceil32(return_data.size) + 356 len (32 * mem[_4651]) + 32], 2, mem[_4651 + ceil32(return_data.size) + (32 * mem[_4651]) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_4651 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _4651 + (2 * ceil32(return_data.size)) + 160
                            require return_data.size >= 32
                            _6282 = mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32
                            require mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 <= test266151307()
                            require _4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 191 < _4651 + ceil32(return_data.size) + return_data.size + 160
                            _6289 = mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160]
                            if mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160] > test266151307():
                                revert with 'NH{q', 65
                            if _4651 + (2 * ceil32(return_data.size)) + floor32(mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160]) + 161 > test266151307() or floor32(mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4651 + (2 * ceil32(return_data.size)) + floor32(mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160]) + 161
                            mem[_4651 + (2 * ceil32(return_data.size)) + 160] = mem[_4651 + ceil32(return_data.size) + mem[_4651 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4593) >> 32 + 160]
                            require _6282 + (32 * _6289) + 32 <= return_data.size
                            s = 0
                            t = _4651 + ceil32(return_data.size) + _6282 + 192
                            u = _4651 + (2 * ceil32(return_data.size)) + 192
                            while s < _6289:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _4583 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _6375 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_6375))
                                staticcall address(_6375).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_6386] == mem[_6386]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_6386]
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] < 90:
                            _4643 = mem[mem[(32 * idx) + 128] + 32]
                            _4653 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 76 len 20], 0))
                            _4654 = sha3(address(mem[mem[(32 * idx) + 128] + 64]), 0)
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 64]), 0)
                            require uint256(stor[_4653]) != uint256(stor[_4654][address(_4643)])
                            _4689 = mem[mem[(32 * idx) + 128]]
                            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                            mem[mem[64] + 36] = _4593
                            require ext_code.size(address(_4689))
                            call address(_4689).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _4593
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4769] == bool(mem[_4769])
                            if mem[_4590 + 160] == 81:
                                _4866 = mem[_4590 + 96]
                                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4653'))))
                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654')))))
                                mem[mem[64] + 68] = _4593
                                mem[mem[64] + 100] = 0
                                require ext_code.size(address(_4866))
                                call address(_4866).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('signextend', 15, ('type', 256, ('stor', ('var', '_4653')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654'))))), _4593, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _5031 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_5031))
                                    staticcall address(_5031).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5187 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5187] == mem[_5187]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5187]
                            else:
                                if mem[_4590 + 160] == 82:
                                    _4876 = mem[_4590 + 96]
                                    mem[mem[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(stor[_4653])
                                    mem[mem[64] + 36] = uint256(stor[_4654][address(_4643)])
                                    mem[mem[64] + 68] = _4593
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(address(_4876))
                                    call address(_4876).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                         gas gas_remaining wei
                                        args uint256(stor[_4653]), uint256(stor[_4654][address(_4643)]), _4593, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5061 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5061))
                                        staticcall address(_5061).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5263 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5263] == mem[_5263]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5263]
                                else:
                                    if mem[_4590 + 160] == 83:
                                        _4890 = mem[_4590 + 96]
                                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4653'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654')))))
                                        mem[mem[64] + 68] = _4593
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(_4890))
                                        call address(_4890).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('type', 256, ('stor', ('var', '_4653')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654'))))), _4593, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + 128] + 160] != 1:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            _5094 = mem[mem[(32 * idx) + 128] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_5094))
                                            staticcall address(_5094).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5297 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5297] == mem[_5297]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5297]
                                    else:
                                        if mem[_4590 + 160] == 84:
                                            _4900 = mem[_4590 + 96]
                                            mem[mem[64]] = 0x65b2489b00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_4653])
                                            mem[mem[64] + 36] = uint256(stor[_4654][address(_4643)])
                                            mem[mem[64] + 68] = _4593
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(_4900))
                                            call address(_4900).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args uint256(stor[_4653]), uint256(stor[_4654][address(_4643)]), _4593, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                _5112 = mem[mem[(32 * idx) + 128] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_5112))
                                                staticcall address(_5112).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5317] == mem[_5317]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5317]
                                        else:
                                            if mem[_4590 + 160] != 85:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    _4930 = mem[mem[(32 * idx) + 128] + 32]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(_4930))
                                                    staticcall address(_4930).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4994 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4994] == mem[_4994]
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_4994]
                                            else:
                                                _4905 = mem[_4590 + 96]
                                                _4906 = mem[_4590 + 64]
                                                mem[mem[64]] = 0x7981c43e00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = address(_4906)
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('var', '_4653'))))
                                                mem[mem[64] + 68] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654')))))
                                                mem[mem[64] + 100] = _4593
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_4905))
                                                call address(_4905).0x7981c43e with:
                                                     gas gas_remaining wei
                                                    args address(_4906), ('signextend', 15, ('type', 256, ('stor', ('var', '_4653')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_4643')), ('var', '_4654'))))), _4593, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    _5294 = mem[mem[(32 * idx) + 128] + 32]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(_5294))
                                                    staticcall address(_5294).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5415 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5415] == mem[_5415]
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5415]
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                if mem[mem[(32 * idx) + 128] + 160] == 13:
                                    _4686 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                    mem[mem[64] + 36] = _4593
                                    require ext_code.size(address(_4686))
                                    call address(_4686).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _4593
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4768 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4768] == bool(mem[_4768])
                                    _4848 = mem[_4590 + 96]
                                    _4850 = mem[_4590 + 32]
                                    mem[mem[64] + 4] = mem[_4590 + 12 len 20]
                                    mem[mem[64] + 36] = address(_4850)
                                    mem[mem[64] + 68] = this.address
                                    require ext_code.size(address(_4848))
                                    call address(_4848).swap(address arg1, address arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_4850), this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4958 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4958] == mem[_4958]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5222 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5222))
                                        staticcall address(_5222).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5380 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5380] == mem[_5380]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5380]
                                else:
                                    require mem[mem[(32 * idx) + 128] + 160] == 14
                                    _4697 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 108 len 20]
                                    mem[mem[64] + 36] = _4593
                                    require ext_code.size(address(_4697))
                                    call address(_4697).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _4593
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4771 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4771] == bool(mem[_4771])
                                    _4861 = mem[_4590 + 96]
                                    _4862 = mem[_4590]
                                    _4863 = mem[_4590 + 32]
                                    mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(_4862)
                                    mem[mem[64] + 36] = address(_4863)
                                    mem[mem[64] + 68] = _4593
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(_4861))
                                    call address(_4861).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(_4862), address(_4863), _4593, 0, address(this.address), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + 128] + 160] != 1:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        _5324 = mem[mem[(32 * idx) + 128] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_5324))
                                        staticcall address(_5324).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5440 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5440] == mem[_5440]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_5440]
                            else:
                                _4667 = mem[64]
                                mem[mem[64]] = 1
                                mem[64] = mem[64] + 64
                                mem[_4667 + 32] = call.data[calldata.size]
                                if 0 >= mem[_4667]:
                                    revert with 'NH{q', 50
                                mem[_4667 + 32] = mem[_4590 + 76 len 20]
                                mem[_4667 + 64] = 2
                                mem[64] = _4667 + 160
                                mem[_4667 + 96 len 64] = call.data[calldata.size len 64]
                                mem[_4667 + 96] = mem[_4590 + 12 len 20]
                                mem[_4667 + 128] = mem[_4590 + 44 len 20]
                                _4738 = mem[_4590]
                                _4739 = mem[_4590 + 96]
                                mem[_4667 + 164] = mem[_4590 + 108 len 20]
                                mem[_4667 + 196] = _4593
                                require ext_code.size(address(_4738))
                                call address(_4738).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(_4739), _4593
                                mem[_4667 + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4667 + ceil32(return_data.size) + 160
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                _4914 = mem[_4590 + 96]
                                mem[_4667 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                mem[_4667 + ceil32(return_data.size) + 164] = _4593
                                mem[_4667 + ceil32(return_data.size) + 196] = 0
                                mem[_4667 + ceil32(return_data.size) + 228] = 192
                                mem[_4667 + ceil32(return_data.size) + 356] = mem[_4667]
                                s = 0
                                t = _4667 + 32
                                u = _4667 + ceil32(return_data.size) + 388
                                while s < mem[_4667]:
                                    mem[u] = mem[t + 12 len 20]
                                    _4583 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_4667 + ceil32(return_data.size) + 260] = (32 * mem[_4667]) + 224
                                mem[_4667 + ceil32(return_data.size) + (32 * mem[_4667]) + 388] = 2
                                s = 0
                                t = _4667 + 96
                                u = _4667 + ceil32(return_data.size) + (32 * mem[_4667]) + 420
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _4583 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_4667 + ceil32(return_data.size) + 292] = this.address
                                mem[_4667 + ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(address(_4914))
                                call address(_4914).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4667 + ceil32(return_data.size) + (32 * mem[_4667]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6279 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6283 = mem[_6279]
                                require mem[_6279] <= test266151307()
                                require _6279 + mem[_6279] + 31 < _6279 + return_data.size
                                _6290 = mem[_6279 + mem[_6279]]
                                if mem[_6279 + mem[_6279]] > test266151307():
                                    revert with 'NH{q', 65
                                if _6279 + ceil32(return_data.size) + floor32(mem[_6279 + mem[_6279]]) + 1 > test266151307() or floor32(mem[_6279 + mem[_6279]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _6279 + ceil32(return_data.size) + floor32(mem[_6279 + mem[_6279]]) + 1
                                mem[_6279 + ceil32(return_data.size)] = _6290
                                require _6283 + (32 * _6290) + 32 <= return_data.size
                                s = 0
                                t = _6279 + _6283 + 32
                                u = _6279 + ceil32(return_data.size) + 32
                                while s < _6290:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _4583 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + 128] + 160] != 1:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6378 = mem[mem[(32 * idx) + 128] + 32]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(address(_6378))
                                    staticcall address(_6378).0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6387 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6387] == mem[_6387]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_2277 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _2277 + ceil32(return_data.size) + 32] = mem[_6387]
        if idx == -1:
            revert with 'NH{q', 17
        _4583 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _4595 = mem[_2277 + ceil32(return_data.size)]
    mem[mem[64] + 32] = mem[_2277 + ceil32(return_data.size)]
    mem[mem[64] + 64 len 32 * _4595] = mem[_2277 + ceil32(return_data.size) + 32 len 32 * _4595]
    return 32, mem[mem[64] + 32 len (32 * _4595) + 32]
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 64
    _3 = mem[128]
    require mem[128] <= test266151307()
    require mem[128] + 159 < arg4.length + 128
    _4 = mem[mem[128] + 128]
    if mem[mem[128] + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + floor32(mem[mem[128] + 128]) + 98 > test266151307() or floor32(mem[mem[128] + 128]) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg4.length)) + floor32(mem[mem[128] + 128]) + 98
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[mem[128] + 128]
    require _3 + (32 * _4) + 64 <= arg4.length + 32
    idx = 0
    s = _3 + 160
    t = ceil32(ceil32(arg4.length)) + 129
    while idx < _4:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _281 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg4.length + 128
    _282 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    _283 = mem[64]
    if mem[64] + floor32(mem[mem[160] + 128]) + 1 > test266151307() or mem[64] + floor32(mem[mem[160] + 128]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[mem[160] + 128]) + 1
    mem[_283] = mem[mem[160] + 128]
    require _281 + (192 * _282) + 64 <= arg4.length + 32
    idx = 0
    s = _281 + 160
    t = _283 + 32
    while idx < _282:
        require arg4.length + -s + 128 >= 192
        _918 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require mem[s] == mem[s + 12 len 20]
        mem[_918] = mem[s]
        require mem[s + 32] == mem[s + 44 len 20]
        mem[_918 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 76 len 20]
        mem[_918 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 108 len 20]
        mem[_918 + 96] = mem[s + 96]
        require mem[s + 128] == mem[s + 128]
        mem[_918 + 128] = mem[s + 128]
        require mem[s + 160] == mem[s + 160]
        mem[_918 + 160] = mem[s + 160]
        mem[t] = _918
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    if 0 >= mem[_283]:
        revert with 'NH{q', 50
    if msg.sender == mem[mem[_283 + 32] + 76 len 20]:
        _1549 = mem[_283]
        idx = 0
        while idx < _1549:
            if idx:
                if idx >= mem[_283]:
                    revert with 'NH{q', 50
                _1559 = mem[(32 * idx) + _283 + 32]
                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                    revert with 'NH{q', 50
                _1561 = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                    revert with 'NH{q', 50
                _1572 = mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129]
                if mem[mem[(32 * idx) + _283 + 32] + 160] == 1:
                    _1577 = mem[mem[(32 * idx) + _283 + 32] + 64]
                    _1578 = mem[mem[(32 * idx) + _283 + 32]]
                    _1579 = mem[mem[(32 * idx) + _283 + 32] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 76 len 20]
                    mem[mem[64] + 36] = _1561
                    require ext_code.size(address(_1578))
                    call address(_1578).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1561
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1708] == bool(mem[_1708])
                    if address(_1578) < address(_1579):
                        if address(_1578) == address(_1578):
                            _1839 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1839 + 36] = 0
                            mem[_1839 + 68] = _1572
                            mem[_1839 + 100] = this.address
                            mem[_1839 + 132] = 128
                            mem[_1839 + 164] = mem[_1839]
                            s = 0
                            while s < mem[_1839]:
                                mem[_1839 + s + 196] = mem[_1839 + s + 32]
                                _1549 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1839]) <= mem[_1839]:
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1572, address(this.address), 128, mem[_1839], mem[_1839 + 196 len ceil32(mem[_1839])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2864 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1839 + 36] = this.address
                                        require ext_code.size(address(_2864))
                                        staticcall address(_2864).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1839 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1839 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1839 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1839 + 36] = 0
                                    mem[_1839 + 68] = _1572
                                    mem[_1839 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1572, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3066 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1839 + 36] = this.address
                                        require ext_code.size(address(_3066))
                                        staticcall address(_3066).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1839 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1839 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1839 + mem[_1839] + 196] = 0
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1572, address(this.address), 128, mem[_1839], mem[_1839 + 196 len ceil32(mem[_1839])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2892 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1839 + 36] = this.address
                                        require ext_code.size(address(_2892))
                                        staticcall address(_2892).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1839 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1839 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1839 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1839 + 36] = 0
                                    mem[_1839 + 68] = _1572
                                    mem[_1839 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1572, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3094 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1839 + 36] = this.address
                                        require ext_code.size(address(_3094))
                                        staticcall address(_3094).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1839 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1839 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                        else:
                            _1840 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1840 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1840 + 36] = _1572
                            mem[_1840 + 68] = 0
                            mem[_1840 + 100] = this.address
                            mem[_1840 + 132] = 128
                            mem[_1840 + 164] = mem[_1840]
                            s = 0
                            while s < mem[_1840]:
                                mem[_1840 + s + 196] = mem[_1840 + s + 32]
                                _1549 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1840]) <= mem[_1840]:
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1572, 0, address(this.address), 128, mem[_1840], mem[_1840 + 196 len ceil32(mem[_1840])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2868 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1840 + 36] = this.address
                                        require ext_code.size(address(_2868))
                                        staticcall address(_2868).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1840 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1840 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1840 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1840 + 36] = _1572
                                    mem[_1840 + 68] = 0
                                    mem[_1840 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1572, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3070 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1840 + 36] = this.address
                                        require ext_code.size(address(_3070))
                                        staticcall address(_3070).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1840 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1840 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1840 + mem[_1840] + 196] = 0
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1572, 0, address(this.address), 128, mem[_1840], mem[_1840 + 196 len ceil32(mem[_1840])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2895 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1840 + 36] = this.address
                                        require ext_code.size(address(_2895))
                                        staticcall address(_2895).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1840 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1840 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1840 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1840 + 36] = _1572
                                    mem[_1840 + 68] = 0
                                    mem[_1840 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1572, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3097 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1840 + 36] = this.address
                                        require ext_code.size(address(_3097))
                                        staticcall address(_3097).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1840 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1840 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                    else:
                        if address(_1578) == address(_1579):
                            _1841 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1841 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1841 + 36] = 0
                            mem[_1841 + 68] = _1572
                            mem[_1841 + 100] = this.address
                            mem[_1841 + 132] = 128
                            mem[_1841 + 164] = mem[_1841]
                            s = 0
                            while s < mem[_1841]:
                                mem[_1841 + s + 196] = mem[_1841 + s + 32]
                                _1549 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1841]) <= mem[_1841]:
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1572, address(this.address), 128, mem[_1841], mem[_1841 + 196 len ceil32(mem[_1841])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2872 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1841 + 36] = this.address
                                        require ext_code.size(address(_2872))
                                        staticcall address(_2872).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1841 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1841 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1841 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1841 + 36] = 0
                                    mem[_1841 + 68] = _1572
                                    mem[_1841 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1572, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3074 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1841 + 36] = this.address
                                        require ext_code.size(address(_3074))
                                        staticcall address(_3074).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1841 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1841 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1841 + mem[_1841] + 196] = 0
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1572, address(this.address), 128, mem[_1841], mem[_1841 + 196 len ceil32(mem[_1841])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2898 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1841 + 36] = this.address
                                        require ext_code.size(address(_2898))
                                        staticcall address(_2898).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1841 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1841 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1841 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1841 + 36] = 0
                                    mem[_1841 + 68] = _1572
                                    mem[_1841 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1572, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3100 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1841 + 36] = this.address
                                        require ext_code.size(address(_3100))
                                        staticcall address(_3100).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1841 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1841 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                        else:
                            _1842 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1842 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1842 + 36] = _1572
                            mem[_1842 + 68] = 0
                            mem[_1842 + 100] = this.address
                            mem[_1842 + 132] = 128
                            mem[_1842 + 164] = mem[_1842]
                            s = 0
                            while s < mem[_1842]:
                                mem[_1842 + s + 196] = mem[_1842 + s + 32]
                                _1549 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1842]) <= mem[_1842]:
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1572, 0, address(this.address), 128, mem[_1842], mem[_1842 + 196 len ceil32(mem[_1842])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2876 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1842 + 36] = this.address
                                        require ext_code.size(address(_2876))
                                        staticcall address(_2876).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1842 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1842 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1842 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1842 + 36] = _1572
                                    mem[_1842 + 68] = 0
                                    mem[_1842 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1572, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3078 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1842 + 36] = this.address
                                        require ext_code.size(address(_3078))
                                        staticcall address(_3078).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1842 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1842 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1842 + mem[_1842] + 196] = 0
                                require ext_code.size(address(_1577))
                                call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1572, 0, address(this.address), 128, mem[_1842], mem[_1842 + 196 len ceil32(mem[_1842])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2901 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1842 + 36] = this.address
                                        require ext_code.size(address(_2901))
                                        staticcall address(_2901).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1842 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1842 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1842 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1842 + 36] = _1572
                                    mem[_1842 + 68] = 0
                                    mem[_1842 + 100] = this.address
                                    require ext_code.size(address(_1577))
                                    call address(_1577).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1572, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3103 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1842 + 36] = this.address
                                        require ext_code.size(address(_3103))
                                        staticcall address(_3103).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1842 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1842 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                else:
                    if mem[mem[(32 * idx) + _283 + 32] + 160] == 5:
                        _1583 = mem[mem[(32 * idx) + _283 + 32]]
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                        mem[mem[64] + 36] = _1561
                        require ext_code.size(address(_1583))
                        call address(_1583).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1561
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1701] == bool(mem[_1701])
                        _1752 = mem[_1559 + 96]
                        _1769 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_1769 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_1769]:
                            revert with 'NH{q', 50
                        mem[_1769 + 32] = mem[_1559 + 12 len 20]
                        if 1 >= mem[_1769]:
                            revert with 'NH{q', 50
                        mem[_1769 + 64] = mem[_1559 + 44 len 20]
                        mem[_1769 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1769 + 100] = _1561
                        mem[_1769 + 132] = 0
                        mem[_1769 + 164] = 160
                        mem[_1769 + 260] = mem[_1769]
                        s = 0
                        t = _1769 + 32
                        u = _1769 + 292
                        while s < mem[_1769]:
                            mem[u] = mem[t + 12 len 20]
                            _1549 = mem[_283]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1769 + 196] = this.address
                        mem[_1769 + 228] = block.timestamp
                        require ext_code.size(address(_1752))
                        call address(_1752).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1769 + (32 * mem[_1769]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2792 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2834 = mem[_2792]
                        require mem[_2792] <= test266151307()
                        require _2792 + mem[_2792] + 31 < _2792 + return_data.size
                        _2904 = mem[_2792 + mem[_2792]]
                        if mem[_2792 + mem[_2792]] > test266151307():
                            revert with 'NH{q', 65
                        if _2792 + ceil32(return_data.size) + floor32(mem[_2792 + mem[_2792]]) + 1 > test266151307() or floor32(mem[_2792 + mem[_2792]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2792 + ceil32(return_data.size) + floor32(mem[_2792 + mem[_2792]]) + 1
                        mem[_2792 + ceil32(return_data.size)] = _2904
                        require _2834 + (32 * _2904) + 32 <= return_data.size
                        s = 0
                        t = _2792 + _2834 + 32
                        u = _2792 + ceil32(return_data.size) + 32
                        while s < _2904:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _1549 = mem[_283]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if idx >= mem[_283]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                            if idx >= mem[_283]:
                                revert with 'NH{q', 50
                            _3273 = mem[mem[(32 * idx) + _283 + 32] + 32]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3273))
                            staticcall address(_3273).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3294 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3294] == mem[_3294]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3294]
                    else:
                        if mem[mem[(32 * idx) + _283 + 32] + 160] == 7:
                            _1587 = mem[mem[(32 * idx) + _283 + 32]]
                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                            mem[mem[64] + 36] = _1561
                            require ext_code.size(address(_1587))
                            call address(_1587).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _1561
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1707] == bool(mem[_1707])
                            mem[0] = mem[_1559 + 108 len 20]
                            mem[32] = 0
                            _1760 = sha3(mem[0], 0)
                            mem[0] = mem[_1559 + 12 len 20]
                            _1762 = sha3(mem[0], _1760)
                            mem[0] = mem[_1559 + 108 len 20]
                            mem[32] = 0
                            _1764 = sha3(mem[0], 0)
                            mem[0] = mem[_1559 + 44 len 20]
                            mem[32] = _1764
                            _1767 = mem[_1559 + 96]
                            mem[mem[64]] = 0x9169558600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint8(stor[_1762])
                            mem[mem[64] + 36] = uint8(stor[_1764][mem[0]])
                            mem[mem[64] + 68] = _1561
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(_1767))
                            call address(_1767).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint8(stor[_1762]), uint8(stor[_1764][mem[0]]), _1561, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_283]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                if idx >= mem[_283]:
                                    revert with 'NH{q', 50
                                _1977 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_1977))
                                staticcall address(_1977).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2065] == mem[_2065]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2065]
                        else:
                            if mem[mem[(32 * idx) + _283 + 32] + 160] < 80:
                                if mem[mem[(32 * idx) + _283 + 32] + 160] != 12:
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] == 13:
                                        _1612 = mem[mem[(32 * idx) + _283 + 32]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                        mem[mem[64] + 36] = _1561
                                        require ext_code.size(address(_1612))
                                        call address(_1612).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1561
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1733 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1733] == bool(mem[_1733])
                                        _1795 = mem[_1559 + 96]
                                        _1797 = mem[_1559 + 32]
                                        mem[mem[64] + 4] = mem[_1559 + 12 len 20]
                                        mem[mem[64] + 36] = address(_1797)
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_1795))
                                        call address(_1795).swap(address arg1, address arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_1797), this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1940 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1940] == mem[_1940]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2130 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2130))
                                            staticcall address(_2130).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2325 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2325] == mem[_2325]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2325]
                                    else:
                                        require mem[mem[(32 * idx) + _283 + 32] + 160] == 14
                                        _1621 = mem[mem[(32 * idx) + _283 + 32]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                        mem[mem[64] + 36] = _1561
                                        require ext_code.size(address(_1621))
                                        call address(_1621).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1561
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1740 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1740] == bool(mem[_1740])
                                        _1804 = mem[_1559 + 96]
                                        _1805 = mem[_1559]
                                        _1806 = mem[_1559 + 32]
                                        mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(_1805)
                                        mem[mem[64] + 36] = address(_1806)
                                        mem[mem[64] + 68] = _1561
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(address(_1804))
                                        call address(_1804).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(_1805), address(_1806), _1561, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2243 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2243))
                                            staticcall address(_2243).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2399 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2399] == mem[_2399]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2399]
                                else:
                                    _1602 = mem[64]
                                    mem[mem[64]] = 1
                                    mem[64] = mem[64] + 64
                                    mem[_1602 + 32] = call.data[calldata.size]
                                    if 0 >= mem[_1602]:
                                        revert with 'NH{q', 50
                                    mem[_1602 + 32] = mem[_1559 + 76 len 20]
                                    mem[_1602 + 64] = 2
                                    mem[64] = _1602 + 160
                                    mem[_1602 + 96 len 64] = call.data[calldata.size len 64]
                                    mem[_1602 + 96] = mem[_1559 + 12 len 20]
                                    mem[_1602 + 128] = mem[_1559 + 44 len 20]
                                    _1678 = mem[_1559]
                                    _1679 = mem[_1559 + 96]
                                    mem[_1602 + 164] = mem[_1559 + 108 len 20]
                                    mem[_1602 + 196] = _1561
                                    require ext_code.size(address(_1678))
                                    call address(_1678).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(_1679), _1561
                                    mem[_1602 + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1602 + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    _1870 = mem[_1559 + 96]
                                    mem[_1602 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                    mem[_1602 + ceil32(return_data.size) + 164] = _1561
                                    mem[_1602 + ceil32(return_data.size) + 196] = 0
                                    mem[_1602 + ceil32(return_data.size) + 228] = 192
                                    mem[_1602 + ceil32(return_data.size) + 356] = mem[_1602]
                                    s = 0
                                    t = _1602 + 32
                                    u = _1602 + ceil32(return_data.size) + 388
                                    while s < mem[_1602]:
                                        mem[u] = mem[t + 12 len 20]
                                        _1549 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1602 + ceil32(return_data.size) + 260] = (32 * mem[_1602]) + 224
                                    mem[_1602 + ceil32(return_data.size) + (32 * mem[_1602]) + 388] = 2
                                    s = 0
                                    t = _1602 + 96
                                    u = _1602 + ceil32(return_data.size) + (32 * mem[_1602]) + 420
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1549 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1602 + ceil32(return_data.size) + 292] = this.address
                                    mem[_1602 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(address(_1870))
                                    call address(_1870).0xceb757d5 with:
                                         gas gas_remaining wei
                                        args _1561, 0, 192, (32 * mem[_1602]) + 224, address(this.address), block.timestamp, mem[_1602 + ceil32(return_data.size) + 356 len (32 * mem[_1602]) + 32], 2, mem[_1602 + ceil32(return_data.size) + (32 * mem[_1602]) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1602 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1602 + (2 * ceil32(return_data.size)) + 160
                                    require return_data.size >= 32
                                    _3285 = mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32
                                    require mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 <= test266151307()
                                    require _1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 191 < _1602 + ceil32(return_data.size) + return_data.size + 160
                                    _3292 = mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]
                                    if mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160] > test266151307():
                                        revert with 'NH{q', 65
                                    if _1602 + (2 * ceil32(return_data.size)) + floor32(mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 161 > test266151307() or floor32(mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _1602 + (2 * ceil32(return_data.size)) + floor32(mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 161
                                    mem[_1602 + (2 * ceil32(return_data.size)) + 160] = mem[_1602 + ceil32(return_data.size) + mem[_1602 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]
                                    require _3285 + (32 * _3292) + 32 <= return_data.size
                                    s = 0
                                    t = _1602 + ceil32(return_data.size) + _3285 + 192
                                    u = _1602 + (2 * ceil32(return_data.size)) + 192
                                    while s < _3292:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        _1549 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3378 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_3378))
                                        staticcall address(_3378).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3389 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3389] == mem[_3389]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3389]
                            else:
                                if mem[mem[(32 * idx) + _283 + 32] + 160] < 90:
                                    _1599 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                    _1604 = sha3(address(mem[mem[(32 * idx) + _283 + 32]]), sha3(mem[mem[(32 * idx) + _283 + 32] + 76 len 20], 0))
                                    _1605 = sha3(address(mem[mem[(32 * idx) + _283 + 32] + 64]), 0)
                                    mem[0] = mem[mem[(32 * idx) + _283 + 32] + 44 len 20]
                                    mem[32] = sha3(address(mem[mem[(32 * idx) + _283 + 32] + 64]), 0)
                                    require uint256(stor[_1604]) != uint256(stor[_1605][address(_1599)])
                                    _1630 = mem[_1559]
                                    mem[mem[64] + 4] = mem[_1559 + 108 len 20]
                                    mem[mem[64] + 36] = _1561
                                    require ext_code.size(address(_1630))
                                    call address(_1630).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _1561
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1742 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1742] == bool(mem[_1742])
                                    if mem[_1559 + 160] == 81:
                                        _1832 = mem[_1559 + 96]
                                        mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1604'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605')))))
                                        mem[mem[64] + 68] = _1561
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(_1832))
                                        call address(_1832).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('type', 256, ('stor', ('var', '_1604')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605'))))), _1561, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2006 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2006))
                                            staticcall address(_2006).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2134 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2134] == mem[_2134]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2134]
                                    else:
                                        if mem[_1559 + 160] == 82:
                                            _1837 = mem[_1559 + 96]
                                            mem[mem[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_1604])
                                            mem[mem[64] + 36] = uint256(stor[_1605][address(_1599)])
                                            mem[mem[64] + 68] = _1561
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(_1837))
                                            call address(_1837).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args uint256(stor[_1604]), uint256(stor[_1605][address(_1599)]), _1561, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2035 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2035))
                                                staticcall address(_2035).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2186 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2186] == mem[_2186]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2186]
                                        else:
                                            if mem[_1559 + 160] == 83:
                                                _1847 = mem[_1559 + 96]
                                                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1604'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605')))))
                                                mem[mem[64] + 68] = _1561
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(_1847))
                                                call address(_1847).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args ('signextend', 15, ('type', 256, ('stor', ('var', '_1604')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605'))))), _1561, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                    if idx >= mem[_283]:
                                                        revert with 'NH{q', 50
                                                    _2052 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(_2052))
                                                    staticcall address(_2052).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2213 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2213] == mem[_2213]
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2213]
                                            else:
                                                if mem[_1559 + 160] == 84:
                                                    _1858 = mem[_1559 + 96]
                                                    mem[mem[64]] = 0x65b2489b00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = uint256(stor[_1604])
                                                    mem[mem[64] + 36] = uint256(stor[_1605][address(_1599)])
                                                    mem[mem[64] + 68] = _1561
                                                    mem[mem[64] + 100] = 0
                                                    require ext_code.size(address(_1858))
                                                    call address(_1858).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                         gas gas_remaining wei
                                                        args uint256(stor[_1604]), uint256(stor[_1605][address(_1599)]), _1561, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx >= mem[_283]:
                                                        revert with 'NH{q', 50
                                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        _2071 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(_2071))
                                                        staticcall address(_2071).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2247 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_2247] == mem[_2247]
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2247]
                                                else:
                                                    if mem[_1559 + 160] != 85:
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                            if idx >= mem[_283]:
                                                                revert with 'NH{q', 50
                                                            _1925 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(address(_1925))
                                                            staticcall address(_1925).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1975 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_1975] == mem[_1975]
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_1975]
                                                    else:
                                                        _1861 = mem[_1559 + 96]
                                                        _1862 = mem[_1559 + 64]
                                                        mem[mem[64]] = 0x7981c43e00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = address(_1862)
                                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1604'))))
                                                        mem[mem[64] + 68] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605')))))
                                                        mem[mem[64] + 100] = _1561
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_1861))
                                                        call address(_1861).0x7981c43e with:
                                                             gas gas_remaining wei
                                                            args address(_1862), ('signextend', 15, ('type', 256, ('stor', ('var', '_1604')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1599')), ('var', '_1605'))))), _1561, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                            if idx >= mem[_283]:
                                                                revert with 'NH{q', 50
                                                            _2210 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(address(_2210))
                                                            staticcall address(_2210).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2376 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_2376] == mem[_2376]
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2376]
                                else:
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 12:
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] == 13:
                                            _1627 = mem[mem[(32 * idx) + _283 + 32]]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                            mem[mem[64] + 36] = _1561
                                            require ext_code.size(address(_1627))
                                            call address(_1627).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], _1561
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1741 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1741] == bool(mem[_1741])
                                            _1808 = mem[_1559 + 96]
                                            _1810 = mem[_1559 + 32]
                                            mem[mem[64] + 4] = mem[_1559 + 12 len 20]
                                            mem[mem[64] + 36] = address(_1810)
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_1808))
                                            call address(_1808).swap(address arg1, address arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_1810), this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1944 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1944] == mem[_1944]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2158 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2158))
                                                staticcall address(_2158).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2343 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2343] == mem[_2343]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2343]
                                        else:
                                            require mem[mem[(32 * idx) + _283 + 32] + 160] == 14
                                            _1638 = mem[mem[(32 * idx) + _283 + 32]]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                            mem[mem[64] + 36] = _1561
                                            require ext_code.size(address(_1638))
                                            call address(_1638).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], _1561
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1745 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1745] == bool(mem[_1745])
                                            _1827 = mem[_1559 + 96]
                                            _1828 = mem[_1559]
                                            _1829 = mem[_1559 + 32]
                                            mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = address(_1828)
                                            mem[mem[64] + 36] = address(_1829)
                                            mem[mem[64] + 68] = _1561
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(address(_1827))
                                            call address(_1827).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(_1828), address(_1829), _1561, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2267 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2267))
                                                staticcall address(_2267).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2410 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2410] == mem[_2410]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2410]
                                    else:
                                        _1616 = mem[64]
                                        mem[mem[64]] = 1
                                        mem[64] = mem[64] + 64
                                        mem[_1616 + 32] = call.data[calldata.size]
                                        if 0 >= mem[_1616]:
                                            revert with 'NH{q', 50
                                        mem[_1616 + 32] = mem[_1559 + 76 len 20]
                                        mem[_1616 + 64] = 2
                                        mem[64] = _1616 + 160
                                        mem[_1616 + 96 len 64] = call.data[calldata.size len 64]
                                        mem[_1616 + 96] = mem[_1559 + 12 len 20]
                                        mem[_1616 + 128] = mem[_1559 + 44 len 20]
                                        _1698 = mem[_1559]
                                        _1699 = mem[_1559 + 96]
                                        mem[_1616 + 164] = mem[_1559 + 108 len 20]
                                        mem[_1616 + 196] = _1561
                                        require ext_code.size(address(_1698))
                                        call address(_1698).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(_1699), _1561
                                        mem[_1616 + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1616 + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        _1882 = mem[_1559 + 96]
                                        mem[_1616 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                        mem[_1616 + ceil32(return_data.size) + 164] = _1561
                                        mem[_1616 + ceil32(return_data.size) + 196] = 0
                                        mem[_1616 + ceil32(return_data.size) + 228] = 192
                                        mem[_1616 + ceil32(return_data.size) + 356] = mem[_1616]
                                        s = 0
                                        t = _1616 + 32
                                        u = _1616 + ceil32(return_data.size) + 388
                                        while s < mem[_1616]:
                                            mem[u] = mem[t + 12 len 20]
                                            _1549 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1616 + ceil32(return_data.size) + 260] = (32 * mem[_1616]) + 224
                                        mem[_1616 + ceil32(return_data.size) + (32 * mem[_1616]) + 388] = 2
                                        s = 0
                                        t = _1616 + 96
                                        u = _1616 + ceil32(return_data.size) + (32 * mem[_1616]) + 420
                                        while s < 2:
                                            mem[u] = mem[t + 12 len 20]
                                            _1549 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1616 + ceil32(return_data.size) + 292] = this.address
                                        mem[_1616 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(address(_1882))
                                        call address(_1882).0xceb757d5 with:
                                             gas gas_remaining wei
                                            args _1561, 0, 192, (32 * mem[_1616]) + 224, address(this.address), block.timestamp, mem[_1616 + ceil32(return_data.size) + 356 len (32 * mem[_1616]) + 32], 2, mem[_1616 + ceil32(return_data.size) + (32 * mem[_1616]) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1616 + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1616 + (2 * ceil32(return_data.size)) + 160
                                        require return_data.size >= 32
                                        _3286 = mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32
                                        require mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 <= test266151307()
                                        require _1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 191 < _1616 + ceil32(return_data.size) + return_data.size + 160
                                        _3293 = mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]
                                        if mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160] > test266151307():
                                            revert with 'NH{q', 65
                                        if _1616 + (2 * ceil32(return_data.size)) + floor32(mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 161 > test266151307() or floor32(mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _1616 + (2 * ceil32(return_data.size)) + floor32(mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]) + 161
                                        mem[_1616 + (2 * ceil32(return_data.size)) + 160] = mem[_1616 + ceil32(return_data.size) + mem[_1616 + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _1561) >> 32 + 160]
                                        require _3286 + (32 * _3293) + 32 <= return_data.size
                                        s = 0
                                        t = _1616 + ceil32(return_data.size) + _3286 + 192
                                        u = _1616 + (2 * ceil32(return_data.size)) + 192
                                        while s < _3293:
                                            require mem[t] == mem[t]
                                            mem[u] = mem[t]
                                            _1549 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _3381 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_3381))
                                            staticcall address(_3381).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3390 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3390] == mem[_3390]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3390]
            if idx == -1:
                revert with 'NH{q', 17
            _1549 = mem[_283]
            idx = idx + 1
            continue 
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        _1553 = mem[mem[_283 + 32]]
        if 0 >= mem[ceil32(ceil32(arg4.length)) + 97]:
            revert with 'NH{q', 50
        _1556 = mem[ceil32(ceil32(arg4.length)) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1556
        require ext_code.size(address(_1553))
        call address(_1553).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1556
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1575 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1575] == bool(mem[_1575])
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        _1662 = mem[mem[_283 + 32]]
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        _1676 = mem[mem[_283 + 32]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1676))
        staticcall address(_1676).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1776 = mem[_1746]
        require mem[_1746] == mem[_1746]
        mem[mem[64] + 4] = 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99
        mem[mem[64] + 36] = _1776
        require ext_code.size(address(_1662))
        call address(_1662).0xa9059cbb with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, _1776
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1922 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1922] == bool(mem[_1922])
    else:
        if mem[_283] < 1:
            revert with 'NH{q', 17
        if mem[_283] - 1 >= mem[_283]:
            revert with 'NH{q', 50
        if mem[mem[(32 * mem[_283] - 1) + _283 + 32] + 76 len 20] != msg.sender:
            revert with 0, 'Q'
        _1548 = mem[_283]
        idx = 0
        while idx < _1548:
            if mem[_283] < 1:
                revert with 'NH{q', 17
            if idx != mem[_283] - 1:
                if idx >= mem[_283]:
                    revert with 'NH{q', 50
                _1567 = mem[(32 * idx) + _283 + 32]
                if idx >= mem[ceil32(ceil32(arg4.length)) + 97]:
                    revert with 'NH{q', 50
                _1569 = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                    revert with 'NH{q', 50
                _1595 = mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129]
                if mem[mem[(32 * idx) + _283 + 32] + 160] == 1:
                    _1608 = mem[mem[(32 * idx) + _283 + 32] + 64]
                    _1609 = mem[mem[(32 * idx) + _283 + 32]]
                    _1610 = mem[mem[(32 * idx) + _283 + 32] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 76 len 20]
                    mem[mem[64] + 36] = _1569
                    require ext_code.size(address(_1609))
                    call address(_1609).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1569
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1744] == bool(mem[_1744])
                    if address(_1609) < address(_1610):
                        if address(_1609) == address(_1609):
                            _1895 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1895 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1895 + 36] = 0
                            mem[_1895 + 68] = _1595
                            mem[_1895 + 100] = this.address
                            mem[_1895 + 132] = 128
                            mem[_1895 + 164] = mem[_1895]
                            s = 0
                            while s < mem[_1895]:
                                mem[_1895 + s + 196] = mem[_1895 + s + 32]
                                _1548 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1895]) <= mem[_1895]:
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1595, address(this.address), 128, mem[_1895], mem[_1895 + 196 len ceil32(mem[_1895])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2848 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1895 + 36] = this.address
                                        require ext_code.size(address(_2848))
                                        staticcall address(_2848).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1895 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1895 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1895 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1895 + 36] = 0
                                    mem[_1895 + 68] = _1595
                                    mem[_1895 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1595, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3049 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1895 + 36] = this.address
                                        require ext_code.size(address(_3049))
                                        staticcall address(_3049).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1895 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1895 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1895 + mem[_1895] + 196] = 0
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1595, address(this.address), 128, mem[_1895], mem[_1895 + 196 len ceil32(mem[_1895])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2880 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1895 + 36] = this.address
                                        require ext_code.size(address(_2880))
                                        staticcall address(_2880).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1895 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1895 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1895 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1895 + 36] = 0
                                    mem[_1895 + 68] = _1595
                                    mem[_1895 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1595, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3082 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1895 + 36] = this.address
                                        require ext_code.size(address(_3082))
                                        staticcall address(_3082).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1895 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1895 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                        else:
                            _1896 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1896 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1896 + 36] = _1595
                            mem[_1896 + 68] = 0
                            mem[_1896 + 100] = this.address
                            mem[_1896 + 132] = 128
                            mem[_1896 + 164] = mem[_1896]
                            s = 0
                            while s < mem[_1896]:
                                mem[_1896 + s + 196] = mem[_1896 + s + 32]
                                _1548 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1896]) <= mem[_1896]:
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1595, 0, address(this.address), 128, mem[_1896], mem[_1896 + 196 len ceil32(mem[_1896])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2852 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1896 + 36] = this.address
                                        require ext_code.size(address(_2852))
                                        staticcall address(_2852).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1896 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1896 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1896 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1896 + 36] = _1595
                                    mem[_1896 + 68] = 0
                                    mem[_1896 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1595, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3053 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1896 + 36] = this.address
                                        require ext_code.size(address(_3053))
                                        staticcall address(_3053).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1896 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1896 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1896 + mem[_1896] + 196] = 0
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1595, 0, address(this.address), 128, mem[_1896], mem[_1896 + 196 len ceil32(mem[_1896])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2883 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1896 + 36] = this.address
                                        require ext_code.size(address(_2883))
                                        staticcall address(_2883).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1896 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1896 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1896 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1896 + 36] = _1595
                                    mem[_1896 + 68] = 0
                                    mem[_1896 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1595, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3085 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1896 + 36] = this.address
                                        require ext_code.size(address(_3085))
                                        staticcall address(_3085).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1896 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1896 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                    else:
                        if address(_1609) == address(_1610):
                            _1897 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1897 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1897 + 36] = 0
                            mem[_1897 + 68] = _1595
                            mem[_1897 + 100] = this.address
                            mem[_1897 + 132] = 128
                            mem[_1897 + 164] = mem[_1897]
                            s = 0
                            while s < mem[_1897]:
                                mem[_1897 + s + 196] = mem[_1897 + s + 32]
                                _1548 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1897]) <= mem[_1897]:
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1595, address(this.address), 128, mem[_1897], mem[_1897 + 196 len ceil32(mem[_1897])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2856 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1897 + 36] = this.address
                                        require ext_code.size(address(_2856))
                                        staticcall address(_2856).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1897 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1897 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1897 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1897 + 36] = 0
                                    mem[_1897 + 68] = _1595
                                    mem[_1897 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1595, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3057 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1897 + 36] = this.address
                                        require ext_code.size(address(_3057))
                                        staticcall address(_3057).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1897 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1897 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1897 + mem[_1897] + 196] = 0
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1595, address(this.address), 128, mem[_1897], mem[_1897 + 196 len ceil32(mem[_1897])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2886 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1897 + 36] = this.address
                                        require ext_code.size(address(_2886))
                                        staticcall address(_2886).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1897 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1897 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1897 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1897 + 36] = 0
                                    mem[_1897 + 68] = _1595
                                    mem[_1897 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args 0, _1595, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3088 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1897 + 36] = this.address
                                        require ext_code.size(address(_3088))
                                        staticcall address(_3088).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1897 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1897 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                        else:
                            _1898 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1898 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1898 + 36] = _1595
                            mem[_1898 + 68] = 0
                            mem[_1898 + 100] = this.address
                            mem[_1898 + 132] = 128
                            mem[_1898 + 164] = mem[_1898]
                            s = 0
                            while s < mem[_1898]:
                                mem[_1898 + s + 196] = mem[_1898 + s + 32]
                                _1548 = mem[_283]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1898]) <= mem[_1898]:
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1595, 0, address(this.address), 128, mem[_1898], mem[_1898 + 196 len ceil32(mem[_1898])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2860 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1898 + 36] = this.address
                                        require ext_code.size(address(_2860))
                                        staticcall address(_2860).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1898 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1898 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1898 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1898 + 36] = _1595
                                    mem[_1898 + 68] = 0
                                    mem[_1898 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1595, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3061 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1898 + 36] = this.address
                                        require ext_code.size(address(_3061))
                                        staticcall address(_3061).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1898 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1898 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                            else:
                                mem[_1898 + mem[_1898] + 196] = 0
                                require ext_code.size(address(_1608))
                                call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1595, 0, address(this.address), 128, mem[_1898], mem[_1898 + 196 len ceil32(mem[_1898])]
                                if ext_call.success:
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _2889 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1898 + 36] = this.address
                                        require ext_code.size(address(_2889))
                                        staticcall address(_2889).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1898 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1898 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                                else:
                                    mem[_1898 + 32] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                    mem[_1898 + 36] = _1595
                                    mem[_1898 + 68] = 0
                                    mem[_1898 + 100] = this.address
                                    require ext_code.size(address(_1608))
                                    call address(_1608).swap(uint256 arg1, uint256 arg2, address arg3) with:
                                         gas gas_remaining wei
                                        args _1595, 0, this.address
                                    require ext_call.success
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3091 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[_1898 + 36] = this.address
                                        require ext_code.size(address(_3091))
                                        staticcall address(_3091).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1898 + 32] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1898 + ceil32(return_data.size) + 32
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
                else:
                    if mem[mem[(32 * idx) + _283 + 32] + 160] == 5:
                        _1618 = mem[mem[(32 * idx) + _283 + 32]]
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                        mem[mem[64] + 36] = _1569
                        require ext_code.size(address(_1618))
                        call address(_1618).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1569
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1738] == bool(mem[_1738])
                        _1803 = mem[_1567 + 96]
                        _1826 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_1826 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_1826]:
                            revert with 'NH{q', 50
                        mem[_1826 + 32] = mem[_1567 + 12 len 20]
                        if 1 >= mem[_1826]:
                            revert with 'NH{q', 50
                        mem[_1826 + 64] = mem[_1567 + 44 len 20]
                        mem[_1826 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_1826 + 100] = _1569
                        mem[_1826 + 132] = 0
                        mem[_1826 + 164] = 160
                        mem[_1826 + 260] = mem[_1826]
                        s = 0
                        t = _1826 + 32
                        u = _1826 + 292
                        while s < mem[_1826]:
                            mem[u] = mem[t + 12 len 20]
                            _1548 = mem[_283]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1826 + 196] = this.address
                        mem[_1826 + 228] = block.timestamp
                        require ext_code.size(address(_1803))
                        call address(_1803).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1826 + (32 * mem[_1826]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2787 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2821 = mem[_2787]
                        require mem[_2787] <= test266151307()
                        require _2787 + mem[_2787] + 31 < _2787 + return_data.size
                        _2903 = mem[_2787 + mem[_2787]]
                        if mem[_2787 + mem[_2787]] > test266151307():
                            revert with 'NH{q', 65
                        if _2787 + ceil32(return_data.size) + floor32(mem[_2787 + mem[_2787]]) + 1 > test266151307() or floor32(mem[_2787 + mem[_2787]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2787 + ceil32(return_data.size) + floor32(mem[_2787 + mem[_2787]]) + 1
                        mem[_2787 + ceil32(return_data.size)] = _2903
                        require _2821 + (32 * _2903) + 32 <= return_data.size
                        s = 0
                        t = _2787 + _2821 + 32
                        u = _2787 + ceil32(return_data.size) + 32
                        while s < _2903:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _1548 = mem[_283]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if idx >= mem[_283]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                            if idx >= mem[_283]:
                                revert with 'NH{q', 50
                            _3270 = mem[mem[(32 * idx) + _283 + 32] + 32]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(_3270))
                            staticcall address(_3270).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3291 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3291] == mem[_3291]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3291]
                    else:
                        if mem[mem[(32 * idx) + _283 + 32] + 160] == 7:
                            _1634 = mem[mem[(32 * idx) + _283 + 32]]
                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                            mem[mem[64] + 36] = _1569
                            require ext_code.size(address(_1634))
                            call address(_1634).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _1569
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1743 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1743] == bool(mem[_1743])
                            mem[0] = mem[_1567 + 108 len 20]
                            mem[32] = 0
                            _1817 = sha3(mem[0], 0)
                            mem[0] = mem[_1567 + 12 len 20]
                            _1819 = sha3(mem[0], _1817)
                            mem[0] = mem[_1567 + 108 len 20]
                            mem[32] = 0
                            _1821 = sha3(mem[0], 0)
                            mem[0] = mem[_1567 + 44 len 20]
                            mem[32] = _1821
                            _1824 = mem[_1567 + 96]
                            mem[mem[64]] = 0x9169558600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint8(stor[_1819])
                            mem[mem[64] + 36] = uint8(stor[_1821][mem[0]])
                            mem[mem[64] + 68] = _1569
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(_1824))
                            call address(_1824).swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args uint8(stor[_1819]), uint8(stor[_1821][mem[0]]), _1569, 0, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_283]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                if idx >= mem[_283]:
                                    revert with 'NH{q', 50
                                _2029 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_2029))
                                staticcall address(_2029).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2180 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2180] == mem[_2180]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2180]
                        else:
                            if mem[mem[(32 * idx) + _283 + 32] + 160] < 80:
                                if mem[mem[(32 * idx) + _283 + 32] + 160] != 12:
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] == 13:
                                        _1670 = mem[mem[(32 * idx) + _283 + 32]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                        mem[mem[64] + 36] = _1569
                                        require ext_code.size(address(_1670))
                                        call address(_1670).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1569
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1781 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1781] == bool(mem[_1781])
                                        _1865 = mem[_1567 + 96]
                                        _1867 = mem[_1567 + 32]
                                        mem[mem[64] + 4] = mem[_1567 + 12 len 20]
                                        mem[mem[64] + 36] = address(_1867)
                                        mem[mem[64] + 68] = this.address
                                        require ext_code.size(address(_1865))
                                        call address(_1865).swap(address arg1, address arg2, address arg3) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_1867), this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1980 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1980] == mem[_1980]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2249 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2249))
                                            staticcall address(_2249).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2400 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2400] == mem[_2400]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2400]
                                    else:
                                        require mem[mem[(32 * idx) + _283 + 32] + 160] == 14
                                        _1686 = mem[mem[(32 * idx) + _283 + 32]]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                        mem[mem[64] + 36] = _1569
                                        require ext_code.size(address(_1686))
                                        call address(_1686).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _1569
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1786 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1786] == bool(mem[_1786])
                                        _1872 = mem[_1567 + 96]
                                        _1873 = mem[_1567]
                                        _1874 = mem[_1567 + 32]
                                        mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(_1873)
                                        mem[mem[64] + 36] = address(_1874)
                                        mem[mem[64] + 68] = _1569
                                        mem[mem[64] + 100] = 0
                                        mem[mem[64] + 132] = this.address
                                        mem[mem[64] + 164] = block.timestamp
                                        require ext_code.size(address(_1872))
                                        call address(_1872).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                             gas gas_remaining wei
                                            args address(_1873), address(_1874), _1569, 0, address(this.address), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2361 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2361))
                                            staticcall address(_2361).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2510 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2510] == mem[_2510]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2510]
                                else:
                                    _1656 = mem[64]
                                    mem[mem[64]] = 1
                                    mem[64] = mem[64] + 64
                                    mem[_1656 + 32] = call.data[calldata.size]
                                    if 0 >= mem[_1656]:
                                        revert with 'NH{q', 50
                                    mem[_1656 + 32] = mem[_1567 + 76 len 20]
                                    mem[_1656 + 64] = 2
                                    mem[64] = _1656 + 160
                                    mem[_1656 + 96 len 64] = call.data[calldata.size len 64]
                                    mem[_1656 + 96] = mem[_1567 + 12 len 20]
                                    mem[_1656 + 128] = mem[_1567 + 44 len 20]
                                    _1726 = mem[_1567]
                                    _1727 = mem[_1567 + 96]
                                    mem[_1656 + 164] = mem[_1567 + 108 len 20]
                                    mem[_1656 + 196] = _1569
                                    require ext_code.size(address(_1726))
                                    call address(_1726).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(_1727), _1569
                                    mem[_1656 + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1656 + ceil32(return_data.size) + 160
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    _1913 = mem[_1567 + 96]
                                    mem[_1656 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                    mem[_1656 + ceil32(return_data.size) + 164] = _1569
                                    mem[_1656 + ceil32(return_data.size) + 196] = 0
                                    mem[_1656 + ceil32(return_data.size) + 228] = 192
                                    mem[_1656 + ceil32(return_data.size) + 356] = mem[_1656]
                                    s = 0
                                    t = _1656 + 32
                                    u = _1656 + ceil32(return_data.size) + 388
                                    while s < mem[_1656]:
                                        mem[u] = mem[t + 12 len 20]
                                        _1548 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1656 + ceil32(return_data.size) + 260] = (32 * mem[_1656]) + 224
                                    mem[_1656 + ceil32(return_data.size) + (32 * mem[_1656]) + 388] = 2
                                    s = 0
                                    t = _1656 + 96
                                    u = _1656 + ceil32(return_data.size) + (32 * mem[_1656]) + 420
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _1548 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1656 + ceil32(return_data.size) + 292] = this.address
                                    mem[_1656 + ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(address(_1913))
                                    call address(_1913).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1656 + ceil32(return_data.size) + (32 * mem[_1656]) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3279 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3283 = mem[_3279]
                                    require mem[_3279] <= test266151307()
                                    require _3279 + mem[_3279] + 31 < _3279 + return_data.size
                                    _3289 = mem[_3279 + mem[_3279]]
                                    if mem[_3279 + mem[_3279]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _3279 + ceil32(return_data.size) + floor32(mem[_3279 + mem[_3279]]) + 1 > test266151307() or floor32(mem[_3279 + mem[_3279]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _3279 + ceil32(return_data.size) + floor32(mem[_3279 + mem[_3279]]) + 1
                                    mem[_3279 + ceil32(return_data.size)] = _3289
                                    require _3283 + (32 * _3289) + 32 <= return_data.size
                                    s = 0
                                    t = _3279 + _3283 + 32
                                    u = _3279 + ceil32(return_data.size) + 32
                                    while s < _3289:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        _1548 = mem[_283]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    if idx >= mem[_283]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        _3372 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(address(_3372))
                                        staticcall address(_3372).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3387 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3387] == mem[_3387]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3387]
                            else:
                                if mem[mem[(32 * idx) + _283 + 32] + 160] < 90:
                                    _1650 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                    _1658 = sha3(address(mem[mem[(32 * idx) + _283 + 32]]), sha3(mem[mem[(32 * idx) + _283 + 32] + 76 len 20], 0))
                                    _1659 = sha3(address(mem[mem[(32 * idx) + _283 + 32] + 64]), 0)
                                    mem[0] = mem[mem[(32 * idx) + _283 + 32] + 44 len 20]
                                    mem[32] = sha3(address(mem[mem[(32 * idx) + _283 + 32] + 64]), 0)
                                    require uint256(stor[_1658]) != uint256(stor[_1659][address(_1650)])
                                    _1695 = mem[_1567]
                                    mem[mem[64] + 4] = mem[_1567 + 108 len 20]
                                    mem[mem[64] + 36] = _1569
                                    require ext_code.size(address(_1695))
                                    call address(_1695).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], _1569
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1788 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1788] == bool(mem[_1788])
                                    if mem[_1567 + 160] == 81:
                                        _1889 = mem[_1567 + 96]
                                        mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1658'))))
                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659')))))
                                        mem[mem[64] + 68] = _1569
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(address(_1889))
                                        call address(_1889).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                             gas gas_remaining wei
                                            args ('signextend', 15, ('type', 256, ('stor', ('var', '_1658')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659'))))), _1569, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _2076 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_2076))
                                            staticcall address(_2076).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2253 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2253] == mem[_2253]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2253]
                                    else:
                                        if mem[_1567 + 160] == 82:
                                            _1893 = mem[_1567 + 96]
                                            mem[mem[64]] = 0x5b41b90800000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(stor[_1658])
                                            mem[mem[64] + 36] = uint256(stor[_1659][address(_1650)])
                                            mem[mem[64] + 68] = _1569
                                            mem[mem[64] + 100] = 0
                                            require ext_code.size(address(_1893))
                                            call address(_1893).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args uint256(stor[_1658]), uint256(stor[_1659][address(_1650)]), _1569, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2103 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2103))
                                                staticcall address(_2103).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2298] == mem[_2298]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2298]
                                        else:
                                            if mem[_1567 + 160] == 83:
                                                _1900 = mem[_1567 + 96]
                                                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1658'))))
                                                mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659')))))
                                                mem[mem[64] + 68] = _1569
                                                mem[mem[64] + 100] = 0
                                                require ext_code.size(address(_1900))
                                                call address(_1900).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args ('signextend', 15, ('type', 256, ('stor', ('var', '_1658')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659'))))), _1569, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                    if idx >= mem[_283]:
                                                        revert with 'NH{q', 50
                                                    _2151 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(address(_2151))
                                                    staticcall address(_2151).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2342 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_2342] == mem[_2342]
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2342]
                                            else:
                                                if mem[_1567 + 160] == 84:
                                                    _1907 = mem[_1567 + 96]
                                                    mem[mem[64]] = 0x65b2489b00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = uint256(stor[_1658])
                                                    mem[mem[64] + 36] = uint256(stor[_1659][address(_1650)])
                                                    mem[mem[64] + 68] = _1569
                                                    mem[mem[64] + 100] = 0
                                                    require ext_code.size(address(_1907))
                                                    call address(_1907).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                                         gas gas_remaining wei
                                                        args uint256(stor[_1658]), uint256(stor[_1659][address(_1650)]), _1569, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if idx >= mem[_283]:
                                                        revert with 'NH{q', 50
                                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        _2200 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(address(_2200))
                                                        staticcall address(_2200).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2365 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_2365] == mem[_2365]
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2365]
                                                else:
                                                    if mem[_1567 + 160] != 85:
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                            if idx >= mem[_283]:
                                                                revert with 'NH{q', 50
                                                            _1949 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(address(_1949))
                                                            staticcall address(_1949).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2027 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_2027] == mem[_2027]
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2027]
                                                    else:
                                                        _1910 = mem[_1567 + 96]
                                                        _1911 = mem[_1567 + 64]
                                                        mem[mem[64]] = 0x7981c43e00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = address(_1911)
                                                        mem[mem[64] + 36] = ('signextend', 15, ('type', 256, ('stor', ('var', '_1658'))))
                                                        mem[mem[64] + 68] = ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659')))))
                                                        mem[mem[64] + 100] = _1569
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_1910))
                                                        call address(_1910).0x7981c43e with:
                                                             gas gas_remaining wei
                                                            args address(_1911), ('signextend', 15, ('type', 256, ('stor', ('var', '_1658')))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', '_1650')), ('var', '_1659'))))), _1569, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if idx >= mem[_283]:
                                                            revert with 'NH{q', 50
                                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                            if idx >= mem[_283]:
                                                                revert with 'NH{q', 50
                                                            _2339 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                            mem[mem[64] + 4] = this.address
                                                            require ext_code.size(address(_2339))
                                                            staticcall address(_2339).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(this.address)
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _2487 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_2487] == mem[_2487]
                                                            if idx > -2:
                                                                revert with 'NH{q', 17
                                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                                revert with 'NH{q', 50
                                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2487]
                                else:
                                    if mem[mem[(32 * idx) + _283 + 32] + 160] != 12:
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] == 13:
                                            _1692 = mem[mem[(32 * idx) + _283 + 32]]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                            mem[mem[64] + 36] = _1569
                                            require ext_code.size(address(_1692))
                                            call address(_1692).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], _1569
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1787 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1787] == bool(mem[_1787])
                                            _1876 = mem[_1567 + 96]
                                            _1878 = mem[_1567 + 32]
                                            mem[mem[64] + 4] = mem[_1567 + 12 len 20]
                                            mem[mem[64] + 36] = address(_1878)
                                            mem[mem[64] + 68] = this.address
                                            require ext_code.size(address(_1876))
                                            call address(_1876).swap(address arg1, address arg2, address arg3) with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_1878), this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1982 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1982] == mem[_1982]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2272 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2272))
                                                staticcall address(_2272).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2418 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2418] == mem[_2418]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2418]
                                        else:
                                            require mem[mem[(32 * idx) + _283 + 32] + 160] == 14
                                            _1702 = mem[mem[(32 * idx) + _283 + 32]]
                                            mem[mem[64] + 4] = mem[mem[(32 * idx) + _283 + 32] + 108 len 20]
                                            mem[mem[64] + 36] = _1569
                                            require ext_code.size(address(_1702))
                                            call address(_1702).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], _1569
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1792 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1792] == bool(mem[_1792])
                                            _1884 = mem[_1567 + 96]
                                            _1885 = mem[_1567]
                                            _1886 = mem[_1567 + 32]
                                            mem[mem[64]] = 0x9908fc8b00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = address(_1885)
                                            mem[mem[64] + 36] = address(_1886)
                                            mem[mem[64] + 68] = _1569
                                            mem[mem[64] + 100] = 0
                                            mem[mem[64] + 132] = this.address
                                            mem[mem[64] + 164] = block.timestamp
                                            require ext_code.size(address(_1884))
                                            call address(_1884).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                 gas gas_remaining wei
                                                args address(_1885), address(_1886), _1569, 0, address(this.address), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                                if idx >= mem[_283]:
                                                    revert with 'NH{q', 50
                                                _2369 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(_2369))
                                                staticcall address(_2369).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2512 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2512] == mem[_2512]
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_2512]
                                    else:
                                        _1674 = mem[64]
                                        mem[mem[64]] = 1
                                        mem[64] = mem[64] + 64
                                        mem[_1674 + 32] = call.data[calldata.size]
                                        if 0 >= mem[_1674]:
                                            revert with 'NH{q', 50
                                        mem[_1674 + 32] = mem[_1567 + 76 len 20]
                                        mem[_1674 + 64] = 2
                                        mem[64] = _1674 + 160
                                        mem[_1674 + 96 len 64] = call.data[calldata.size len 64]
                                        mem[_1674 + 96] = mem[_1567 + 12 len 20]
                                        mem[_1674 + 128] = mem[_1567 + 44 len 20]
                                        _1735 = mem[_1567]
                                        _1736 = mem[_1567 + 96]
                                        mem[_1674 + 164] = mem[_1567 + 108 len 20]
                                        mem[_1674 + 196] = _1569
                                        require ext_code.size(address(_1735))
                                        call address(_1735).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(_1736), _1569
                                        mem[_1674 + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1674 + ceil32(return_data.size) + 160
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        _1915 = mem[_1567 + 96]
                                        mem[_1674 + ceil32(return_data.size) + 160] = 0xceb757d500000000000000000000000000000000000000000000000000000000
                                        mem[_1674 + ceil32(return_data.size) + 164] = _1569
                                        mem[_1674 + ceil32(return_data.size) + 196] = 0
                                        mem[_1674 + ceil32(return_data.size) + 228] = 192
                                        mem[_1674 + ceil32(return_data.size) + 356] = mem[_1674]
                                        s = 0
                                        t = _1674 + 32
                                        u = _1674 + ceil32(return_data.size) + 388
                                        while s < mem[_1674]:
                                            mem[u] = mem[t + 12 len 20]
                                            _1548 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1674 + ceil32(return_data.size) + 260] = (32 * mem[_1674]) + 224
                                        mem[_1674 + ceil32(return_data.size) + (32 * mem[_1674]) + 388] = 2
                                        s = 0
                                        t = _1674 + 96
                                        u = _1674 + ceil32(return_data.size) + (32 * mem[_1674]) + 420
                                        while s < 2:
                                            mem[u] = mem[t + 12 len 20]
                                            _1548 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1674 + ceil32(return_data.size) + 292] = this.address
                                        mem[_1674 + ceil32(return_data.size) + 324] = block.timestamp
                                        require ext_code.size(address(_1915))
                                        call address(_1915).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1674 + ceil32(return_data.size) + (32 * mem[_1674]) + -mem[64] + 480]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3280 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _3284 = mem[_3280]
                                        require mem[_3280] <= test266151307()
                                        require _3280 + mem[_3280] + 31 < _3280 + return_data.size
                                        _3290 = mem[_3280 + mem[_3280]]
                                        if mem[_3280 + mem[_3280]] > test266151307():
                                            revert with 'NH{q', 65
                                        if _3280 + ceil32(return_data.size) + floor32(mem[_3280 + mem[_3280]]) + 1 > test266151307() or floor32(mem[_3280 + mem[_3280]]) + 1 < 0:
                                            revert with 'NH{q', 65
                                        mem[64] = _3280 + ceil32(return_data.size) + floor32(mem[_3280 + mem[_3280]]) + 1
                                        mem[_3280 + ceil32(return_data.size)] = _3290
                                        require _3284 + (32 * _3290) + 32 <= return_data.size
                                        s = 0
                                        t = _3280 + _3284 + 32
                                        u = _3280 + ceil32(return_data.size) + 32
                                        while s < _3290:
                                            require mem[t] == mem[t]
                                            mem[u] = mem[t]
                                            _1548 = mem[_283]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        if idx >= mem[_283]:
                                            revert with 'NH{q', 50
                                        if mem[mem[(32 * idx) + _283 + 32] + 160] != 1:
                                            if idx >= mem[_283]:
                                                revert with 'NH{q', 50
                                            _3375 = mem[mem[(32 * idx) + _283 + 32] + 32]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(_3375))
                                            staticcall address(_3375).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3388 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3388] == mem[_3388]
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[ceil32(ceil32(arg4.length)) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + ceil32(ceil32(arg4.length)) + 129] = mem[_3388]
            if idx == -1:
                revert with 'NH{q', 17
            _1548 = mem[_283]
            idx = idx + 1
            continue 
        if mem[_283] < 1:
            revert with 'NH{q', 17
        if mem[_283] - 1 >= mem[_283]:
            revert with 'NH{q', 50
        _1564 = mem[mem[(32 * mem[_283] - 1) + _283 + 32]]
        if mem[ceil32(ceil32(arg4.length)) + 97] < 2:
            revert with 'NH{q', 17
        if mem[ceil32(ceil32(arg4.length)) + 97] - 2 >= mem[ceil32(ceil32(arg4.length)) + 97]:
            revert with 'NH{q', 50
        _1580 = mem[(32 * mem[ceil32(ceil32(arg4.length)) + 97] - 2) + ceil32(ceil32(arg4.length)) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1580
        require ext_code.size(address(_1564))
        call address(_1564).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1580
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1685 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1685] == bool(mem[_1685])
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        _1771 = mem[mem[_283 + 32]]
        if 0 >= mem[_283]:
            revert with 'NH{q', 50
        _1779 = mem[mem[_283 + 32]]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1779))
        staticcall address(_1779).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1864 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1891 = mem[_1864]
        require mem[_1864] == mem[_1864]
        mem[mem[64] + 4] = 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99
        mem[mem[64] + 36] = _1891
        require ext_code.size(address(_1771))
        call address(_1771).0xa9059cbb with:
             gas gas_remaining wei
            args 0xd0378dc03bbe09df7b474b5a3a7bbe9171ce5b99, _1891
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1986 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1986] == bool(mem[_1986])
}



}
