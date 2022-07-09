contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_500f1313(?)
#  - sub_9ead80fd(?)
#
mapping of uint8 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
address stor3;

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

function _fallback() payable {
  stop
}

function isAllowed() {
    if 0x85a92368ab710a85f57b9872c0fe4361a405e5d != msg.sender:
        require msg.sender == 0xebdef90adcd0cef650afd081375570b391a6880a
    return 1
}

function sub_4e27b7d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
        if address(arg1) != 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
            return 0
    return 1
}

function sub_0050648d(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
}

function sub_90c3d203(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if uint256(sub_f119462d[address(arg1)][address(arg2)]) == uint256(sub_f119462d[address(arg1)][address(arg3)]):
        revert with 0, 'BAD CURVE'
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
    if uint256(sub_f119462d[address(arg5)][address(arg2)]) == uint256(sub_f119462d[address(arg5)][address(arg3)]):
        revert with 0, 'BAD CURVE'
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'not found'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x85a92368ab710a85f57b9872c0fe4361a405e5d, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call 0x085a92368ab710a85f57b9872c0fe4361a405e5d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
        _25 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_25] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_25 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_25 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_25 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_25 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_25 + 160] = cd[(s + 160)]
        mem[t] = _25
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

function sub_399d71fd(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == bool(arg6)
    require arg7 == address(arg7)
    if 0x85a92368ab710a85f57b9872c0fe4361a405e5d != msg.sender:
        require msg.sender == 0xebdef90adcd0cef650afd081375570b391a6880a
    if arg6:
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    if address(arg2) < address(arg3):
        if address(arg2) == address(arg2):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg5, address(arg7), 128, 0
            if not ext_call.success:
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0, arg5, address(arg7)
                require ext_call.success
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg5, 0, address(arg7), 128, 0
            if not ext_call.success:
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg5, 0, address(arg7)
                require ext_call.success
    else:
        if address(arg2) == address(arg3):
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg5, address(arg7), 128, 0
            if not ext_call.success:
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0, arg5, address(arg7)
                require ext_call.success
        else:
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg5, 0, address(arg7), 128, 0
            if not ext_call.success:
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args arg5, 0, address(arg7)
                require ext_call.success
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
    require ext_code.size(stor3)
    staticcall stor3.mem[mem[64] len 4] with:
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



}
