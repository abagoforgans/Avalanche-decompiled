contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_10fec347(?)
#  - sub_500f1313(?)
#  - sub_9ead80fd(?)
#
mapping of uint256 sub_f119462d;
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
    return sub_f119462d[arg1][arg2]
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
    return 0
}

function sub_90c3d203(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if sub_f119462d[address(arg1)][address(arg2)] == sub_f119462d[address(arg1)][address(arg3)]:
        revert with 0, 'BAD CURVE'
    return sub_f119462d[address(arg1)][address(arg2)], sub_f119462d[address(arg1)][address(arg3)]
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

function sub_5bf03be3(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    if sub_f119462d[address(arg5)][address(arg2)] == sub_f119462d[address(arg5)][address(arg3)]:
        revert with 0, 'BAD CURVE'
    if address(arg5) == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        require ext_code.size(address(arg5))
        staticcall address(arg5).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args sub_f119462d[address(arg5)][address(arg2)], sub_f119462d[address(arg5)][address(arg3)], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 9996 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 9996 * ext_call.return_data[0] / 10000 < 1:
            revert with 'NH{q', 17
        return ((9996 * ext_call.return_data[0] / 10000) - 1)
    if address(arg5) == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
        require ext_code.size(address(arg5))
        staticcall address(arg5).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), arg1
    else:
        if address(arg5) != 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
            if address(arg5) != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                revert with 0, 'bad curve'
        require ext_code.size(address(arg5))
        staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - 1)
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

function sub_d80c6821(?) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require calldata.size - 36 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    if sub_f119462d[address(arg5)][address(arg2)] == sub_f119462d[address(arg5)][address(arg3)]:
        revert with 0, 'BAD CURVE'
    if address(arg5) == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        require ext_code.size(address(arg5))
        call address(arg5).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_f119462d[address(arg5)][address(arg2)], sub_f119462d[address(arg5)][address(arg3)], arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(arg5) == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
        require ext_code.size(address(arg5))
        call address(arg5).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg5) == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
        require ext_code.size(address(arg5))
        call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(arg5) == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
        require ext_code.size(address(arg5))
        call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0))))), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e6595c0(?) {
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
        _64 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_64] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_64 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_64 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_64 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_64 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_64 + 160] = cd[(s + 160)]
        mem[t] = _64
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
    if stor3:
        if mem[96] >= 2:
            mem[0] = mem[mem[128] + 44 len 20]
            mem[32] = 1
            if stor1[mem[0]]:
                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                mem[32] = 1
                if stor1[mem[0]]:
                    if mem[mem[128] + 12 len 20] == mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20]:
                        if mem[mem[128] + 160] == 1:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                                return 1
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                return 1
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                return 1
                        else:
                            if mem[mem[128] + 160] == 13:
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                                    return 1
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                    return 1
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                    return 1
                            else:
                                if mem[mem[128] + 160] == 14:
                                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                                        return 1
                                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                        return 1
                                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                        return 1
    return 0
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

function sub_c54820e8(?) {
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
        _387 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_387] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_387 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_387 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_387 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_387 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_387 + 160] = cd[(s + 160)]
        mem[t] = _387
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
    if not stor3:
        return cd[4]
    if mem[96] < 2:
        return cd[4]
    mem[0] = mem[mem[128] + 44 len 20]
    mem[32] = 1
    if not stor1[mem[0]]:
        return cd[4]
    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
    mem[32] = 1
    if not stor1[mem[0]]:
        return cd[4]
    if mem[mem[128] + 12 len 20] != mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20]:
        return cd[4]
    if mem[mem[128] + 160] == 1:
        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _422 = mem[128]
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            _428 = mem[192]
            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[_422 + 12 len 20]
            mem[mem[64] + 36] = mem[_422 + 44 len 20]
            mem[mem[64] + 68] = mem[_422 + 76 len 20]
            mem[mem[64] + 100] = mem[_422 + 108 len 20]
            mem[mem[64] + 132] = mem[_422 + 128]
            mem[mem[64] + 164] = mem[_422 + 160]
            mem[mem[64] + 196] = mem[_428 + 12 len 20]
            mem[mem[64] + 228] = mem[_428 + 44 len 20]
            mem[mem[64] + 260] = mem[_428 + 76 len 20]
            mem[mem[64] + 292] = mem[_428 + 108 len 20]
            mem[mem[64] + 324] = mem[_428 + 128]
            mem[mem[64] + 356] = mem[_428 + 160]
            require ext_code.size(stor3)
            staticcall stor3.0x6fbc9807 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len 384]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _586 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_586] == bool(mem[_586])
            _610 = mem[_586 + 32]
            require mem[_586 + 32] == mem[_586 + 32]
            if not mem[_586]:
                revert with 0, 'B'
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _622 = mem[mem[128]]
            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
            require ext_code.size(address(_622))
            staticcall address(_622).0x70a08231 with:
                    gas gas_remaining wei
                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _673 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_673] == mem[_673]
            if _610 < mem[_673]:
                if _610:
                    return _610
                return cd[4]
            if not mem[_673]:
                return cd[4]
            mem[mem[64]] = mem[_673]
        else:
            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _430 = mem[128]
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                _437 = mem[192]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_430 + 12 len 20]
                mem[mem[64] + 36] = mem[_430 + 44 len 20]
                mem[mem[64] + 68] = mem[_430 + 76 len 20]
                mem[mem[64] + 100] = mem[_430 + 108 len 20]
                mem[mem[64] + 132] = mem[_430 + 128]
                mem[mem[64] + 164] = mem[_430 + 160]
                mem[mem[64] + 196] = mem[_437 + 12 len 20]
                mem[mem[64] + 228] = mem[_437 + 44 len 20]
                mem[mem[64] + 260] = mem[_437 + 76 len 20]
                mem[mem[64] + 292] = mem[_437 + 108 len 20]
                mem[mem[64] + 324] = mem[_437 + 128]
                mem[mem[64] + 356] = mem[_437 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _590 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_590] == bool(mem[_590])
                _611 = mem[_590 + 32]
                require mem[_590 + 32] == mem[_590 + 32]
                if not mem[_590]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _629 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_629))
                staticcall address(_629).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_679] == mem[_679]
                if _611 < mem[_679]:
                    if _611:
                        return _611
                    return cd[4]
                if not mem[_679]:
                    return cd[4]
                mem[mem[64]] = mem[_679]
            else:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                    return cd[4]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _439 = mem[128]
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                _450 = mem[192]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_439 + 12 len 20]
                mem[mem[64] + 36] = mem[_439 + 44 len 20]
                mem[mem[64] + 68] = mem[_439 + 76 len 20]
                mem[mem[64] + 100] = mem[_439 + 108 len 20]
                mem[mem[64] + 132] = mem[_439 + 128]
                mem[mem[64] + 164] = mem[_439 + 160]
                mem[mem[64] + 196] = mem[_450 + 12 len 20]
                mem[mem[64] + 228] = mem[_450 + 44 len 20]
                mem[mem[64] + 260] = mem[_450 + 76 len 20]
                mem[mem[64] + 292] = mem[_450 + 108 len 20]
                mem[mem[64] + 324] = mem[_450 + 128]
                mem[mem[64] + 356] = mem[_450 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_594] == bool(mem[_594])
                _613 = mem[_594 + 32]
                require mem[_594 + 32] == mem[_594 + 32]
                if not mem[_594]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _641 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_641))
                staticcall address(_641).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _684 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_684] == mem[_684]
                if _613 < mem[_684]:
                    if _613:
                        return _613
                    return cd[4]
                if not mem[_684]:
                    return cd[4]
                mem[mem[64]] = mem[_684]
    else:
        if mem[mem[128] + 160] == 13:
            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _433 = mem[128]
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                _441 = mem[192]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_433 + 12 len 20]
                mem[mem[64] + 36] = mem[_433 + 44 len 20]
                mem[mem[64] + 68] = mem[_433 + 76 len 20]
                mem[mem[64] + 100] = mem[_433 + 108 len 20]
                mem[mem[64] + 132] = mem[_433 + 128]
                mem[mem[64] + 164] = mem[_433 + 160]
                mem[mem[64] + 196] = mem[_441 + 12 len 20]
                mem[mem[64] + 228] = mem[_441 + 44 len 20]
                mem[mem[64] + 260] = mem[_441 + 76 len 20]
                mem[mem[64] + 292] = mem[_441 + 108 len 20]
                mem[mem[64] + 324] = mem[_441 + 128]
                mem[mem[64] + 356] = mem[_441 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _591 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_591] == bool(mem[_591])
                _612 = mem[_591 + 32]
                require mem[_591 + 32] == mem[_591 + 32]
                if not mem[_591]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _634 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_634))
                staticcall address(_634).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_680] == mem[_680]
                if _612 < mem[_680]:
                    if _612:
                        return _612
                    return cd[4]
                if not mem[_680]:
                    return cd[4]
                mem[mem[64]] = mem[_680]
            else:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _443 = mem[128]
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    _453 = mem[192]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_443 + 12 len 20]
                    mem[mem[64] + 36] = mem[_443 + 44 len 20]
                    mem[mem[64] + 68] = mem[_443 + 76 len 20]
                    mem[mem[64] + 100] = mem[_443 + 108 len 20]
                    mem[mem[64] + 132] = mem[_443 + 128]
                    mem[mem[64] + 164] = mem[_443 + 160]
                    mem[mem[64] + 196] = mem[_453 + 12 len 20]
                    mem[mem[64] + 228] = mem[_453 + 44 len 20]
                    mem[mem[64] + 260] = mem[_453 + 76 len 20]
                    mem[mem[64] + 292] = mem[_453 + 108 len 20]
                    mem[mem[64] + 324] = mem[_453 + 128]
                    mem[mem[64] + 356] = mem[_453 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_595] == bool(mem[_595])
                    _614 = mem[_595 + 32]
                    require mem[_595 + 32] == mem[_595 + 32]
                    if not mem[_595]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _644 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_644))
                    staticcall address(_644).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_685] == mem[_685]
                    if _614 < mem[_685]:
                        if _614:
                            return _614
                        return cd[4]
                    if not mem[_685]:
                        return cd[4]
                    mem[mem[64]] = mem[_685]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                        return cd[4]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _455 = mem[128]
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    _464 = mem[192]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_455 + 12 len 20]
                    mem[mem[64] + 36] = mem[_455 + 44 len 20]
                    mem[mem[64] + 68] = mem[_455 + 76 len 20]
                    mem[mem[64] + 100] = mem[_455 + 108 len 20]
                    mem[mem[64] + 132] = mem[_455 + 128]
                    mem[mem[64] + 164] = mem[_455 + 160]
                    mem[mem[64] + 196] = mem[_464 + 12 len 20]
                    mem[mem[64] + 228] = mem[_464 + 44 len 20]
                    mem[mem[64] + 260] = mem[_464 + 76 len 20]
                    mem[mem[64] + 292] = mem[_464 + 108 len 20]
                    mem[mem[64] + 324] = mem[_464 + 128]
                    mem[mem[64] + 356] = mem[_464 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_599] == bool(mem[_599])
                    _616 = mem[_599 + 32]
                    require mem[_599 + 32] == mem[_599 + 32]
                    if not mem[_599]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _654 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_654))
                    staticcall address(_654).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_689] == mem[_689]
                    if _616 < mem[_689]:
                        if _616:
                            return _616
                        return cd[4]
                    if not mem[_689]:
                        return cd[4]
                    mem[mem[64]] = mem[_689]
        else:
            if mem[mem[128] + 160] != 14:
                return cd[4]
            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _446 = mem[128]
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                _457 = mem[192]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_446 + 12 len 20]
                mem[mem[64] + 36] = mem[_446 + 44 len 20]
                mem[mem[64] + 68] = mem[_446 + 76 len 20]
                mem[mem[64] + 100] = mem[_446 + 108 len 20]
                mem[mem[64] + 132] = mem[_446 + 128]
                mem[mem[64] + 164] = mem[_446 + 160]
                mem[mem[64] + 196] = mem[_457 + 12 len 20]
                mem[mem[64] + 228] = mem[_457 + 44 len 20]
                mem[mem[64] + 260] = mem[_457 + 76 len 20]
                mem[mem[64] + 292] = mem[_457 + 108 len 20]
                mem[mem[64] + 324] = mem[_457 + 128]
                mem[mem[64] + 356] = mem[_457 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_596] == bool(mem[_596])
                _615 = mem[_596 + 32]
                require mem[_596 + 32] == mem[_596 + 32]
                if not mem[_596]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _649 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_649))
                staticcall address(_649).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_686] == mem[_686]
                if _615 < mem[_686]:
                    if _615:
                        return _615
                    return cd[4]
                if not mem[_686]:
                    return cd[4]
                mem[mem[64]] = mem[_686]
            else:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _459 = mem[128]
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    _467 = mem[192]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_459 + 12 len 20]
                    mem[mem[64] + 36] = mem[_459 + 44 len 20]
                    mem[mem[64] + 68] = mem[_459 + 76 len 20]
                    mem[mem[64] + 100] = mem[_459 + 108 len 20]
                    mem[mem[64] + 132] = mem[_459 + 128]
                    mem[mem[64] + 164] = mem[_459 + 160]
                    mem[mem[64] + 196] = mem[_467 + 12 len 20]
                    mem[mem[64] + 228] = mem[_467 + 44 len 20]
                    mem[mem[64] + 260] = mem[_467 + 76 len 20]
                    mem[mem[64] + 292] = mem[_467 + 108 len 20]
                    mem[mem[64] + 324] = mem[_467 + 128]
                    mem[mem[64] + 356] = mem[_467 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_600] == bool(mem[_600])
                    _617 = mem[_600 + 32]
                    require mem[_600 + 32] == mem[_600 + 32]
                    if not mem[_600]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _657 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_657))
                    staticcall address(_657).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_690] == mem[_690]
                    if _617 < mem[_690]:
                        if _617:
                            return _617
                        return cd[4]
                    if not mem[_690]:
                        return cd[4]
                    mem[mem[64]] = mem[_690]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                        return cd[4]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _469 = mem[128]
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    _474 = mem[192]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_469 + 12 len 20]
                    mem[mem[64] + 36] = mem[_469 + 44 len 20]
                    mem[mem[64] + 68] = mem[_469 + 76 len 20]
                    mem[mem[64] + 100] = mem[_469 + 108 len 20]
                    mem[mem[64] + 132] = mem[_469 + 128]
                    mem[mem[64] + 164] = mem[_469 + 160]
                    mem[mem[64] + 196] = mem[_474 + 12 len 20]
                    mem[mem[64] + 228] = mem[_474 + 44 len 20]
                    mem[mem[64] + 260] = mem[_474 + 76 len 20]
                    mem[mem[64] + 292] = mem[_474 + 108 len 20]
                    mem[mem[64] + 324] = mem[_474 + 128]
                    mem[mem[64] + 356] = mem[_474 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_603] == bool(mem[_603])
                    _618 = mem[_603 + 32]
                    require mem[_603 + 32] == mem[_603 + 32]
                    if not mem[_603]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _662 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_662))
                    staticcall address(_662).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_693] == mem[_693]
                    if _618 < mem[_693]:
                        if _618:
                            return _618
                        return cd[4]
                    if not mem[_693]:
                        return cd[4]
                    mem[mem[64]] = mem[_693]
    return memory
      from mem[64]
       len 32
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
        _3852 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_3852] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_3852 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_3852 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_3852 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_3852 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_3852 + 160] = cd[(s + 160)]
        mem[t] = _3852
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _3851 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _3853 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _3851 + 1) + 32
    if not _3851 + 1:
        if 0 >= mem[_3853]:
            revert with 'NH{q', 50
        mem[_3853 + 32] = cd[4]
        _7700 = mem[96]
        idx = 0
        while idx < _7700:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _7705 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _7712 = mem[mem[(32 * idx) + 128]]
                _7713 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _7718 = mem[mem[(32 * idx) + 128] + 64]
                    _7722 = mem[64]
                    _7723 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7723 + 32] = mem[_7723 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _7753 = mem[_7723]
                    s = 0
                    while s < _7753:
                        mem[_7722 + s + 36] = mem[_7723 + s + 32]
                        _7700 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_7753) <= _7753:
                        staticcall address(_7718).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7722 + _7753 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7712):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11578] = return_data.size
                            mem[_11578 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7712):
                                if mem[_11578 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11578 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11578 + 64]:
                                        if False and mem[_11578 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11578 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11578 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11578 + 32] and 10000 > -1 / mem[_11578 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11578 + 32] / 10000 != mem[_11578 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11578 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11578 + 32] < 10000 * mem[_11578 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11578 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11578 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11578 + 64]:
                                        if mem[_11578 + 32] and 10000 > -1 / mem[_11578 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11578 + 32] / 10000 != mem[_11578 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11578 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11578 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11578 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11578 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 64]) / mem[_11578 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11578 + 32] and 10000 > -1 / mem[_11578 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11578 + 32] / 10000 != mem[_11578 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11578 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11578 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 64]) / (10000 * mem[_11578 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11578 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11578 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11578 + 32]:
                                        if False and mem[_11578 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11578 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11578 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11578 + 64] and 10000 > -1 / mem[_11578 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11578 + 64] / 10000 != mem[_11578 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11578 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11578 + 64] < 10000 * mem[_11578 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11578 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11578 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11578 + 32]:
                                        if mem[_11578 + 64] and 10000 > -1 / mem[_11578 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11578 + 64] / 10000 != mem[_11578 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11578 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11578 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11578 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11578 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 32]) / mem[_11578 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11578 + 64] and 10000 > -1 / mem[_11578 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11578 + 64] / 10000 != mem[_11578 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11578 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11578 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11578 + 32]) / (10000 * mem[_11578 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        mem[_7722 + _7753 + 36] = 0
                        staticcall address(_7718).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7722 + _7753 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7712):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11606 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11606] = return_data.size
                            mem[_11606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7712):
                                if mem[_11606 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11606 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11606 + 64]:
                                        if False and mem[_11606 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11606 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11606 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11606 + 32] and 10000 > -1 / mem[_11606 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11606 + 32] / 10000 != mem[_11606 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11606 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11606 + 32] < 10000 * mem[_11606 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11606 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11606 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11606 + 64]:
                                        if mem[_11606 + 32] and 10000 > -1 / mem[_11606 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11606 + 32] / 10000 != mem[_11606 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11606 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11606 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11606 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11606 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 64]) / mem[_11606 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11606 + 32] and 10000 > -1 / mem[_11606 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11606 + 32] / 10000 != mem[_11606 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11606 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11606 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 64]) / (10000 * mem[_11606 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11606 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11606 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11606 + 32]:
                                        if False and mem[_11606 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11606 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11606 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11606 + 64] and 10000 > -1 / mem[_11606 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11606 + 64] / 10000 != mem[_11606 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11606 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11606 + 64] < 10000 * mem[_11606 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11606 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11606 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11606 + 32]:
                                        if mem[_11606 + 64] and 10000 > -1 / mem[_11606 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11606 + 64] / 10000 != mem[_11606 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11606 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11606 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11606 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11606 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 32]) / mem[_11606 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11606 + 64] and 10000 > -1 / mem[_11606 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11606 + 64] / 10000 != mem[_11606 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11606 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11606 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11606 + 32]) / (10000 * mem[_11606 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                else:
                    _7719 = mem[mem[(32 * idx) + 128] + 64]
                    _7726 = mem[64]
                    _7727 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7727 + 32] = mem[_7727 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _7754 = mem[_7727]
                    s = 0
                    while s < _7754:
                        mem[_7726 + s + 36] = mem[_7727 + s + 32]
                        _7700 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_7754) <= _7754:
                        staticcall address(_7719).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7726 + _7754 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7713):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11580] = return_data.size
                            mem[_11580 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7713):
                                if mem[_11580 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11580 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11580 + 64]:
                                        if False and mem[_11580 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11580 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11580 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11580 + 32] and 10000 > -1 / mem[_11580 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11580 + 32] / 10000 != mem[_11580 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11580 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11580 + 32] < 10000 * mem[_11580 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11580 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11580 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11580 + 64]:
                                        if mem[_11580 + 32] and 10000 > -1 / mem[_11580 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11580 + 32] / 10000 != mem[_11580 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11580 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11580 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11580 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11580 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 64]) / mem[_11580 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11580 + 32] and 10000 > -1 / mem[_11580 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11580 + 32] / 10000 != mem[_11580 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11580 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11580 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 64]) / (10000 * mem[_11580 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11580 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11580 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11580 + 32]:
                                        if False and mem[_11580 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11580 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11580 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11580 + 64] and 10000 > -1 / mem[_11580 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11580 + 64] / 10000 != mem[_11580 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11580 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11580 + 64] < 10000 * mem[_11580 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11580 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11580 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11580 + 32]:
                                        if mem[_11580 + 64] and 10000 > -1 / mem[_11580 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11580 + 64] / 10000 != mem[_11580 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11580 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11580 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11580 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11580 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 32]) / mem[_11580 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11580 + 64] and 10000 > -1 / mem[_11580 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11580 + 64] / 10000 != mem[_11580 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11580 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11580 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11580 + 32]) / (10000 * mem[_11580 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        mem[_7726 + _7754 + 36] = 0
                        staticcall address(_7719).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7726 + _7754 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7713):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11611] = return_data.size
                            mem[_11611 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7705 + 12 len 20] == address(_7713):
                                if mem[_11611 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11611 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11611 + 64]:
                                        if False and mem[_11611 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11611 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11611 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11611 + 32] and 10000 > -1 / mem[_11611 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11611 + 32] / 10000 != mem[_11611 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11611 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11611 + 32] < 10000 * mem[_11611 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11611 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11611 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11611 + 64]:
                                        if mem[_11611 + 32] and 10000 > -1 / mem[_11611 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11611 + 32] / 10000 != mem[_11611 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11611 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11611 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11611 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11611 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 64]) / mem[_11611 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11611 + 32] and 10000 > -1 / mem[_11611 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11611 + 32] / 10000 != mem[_11611 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11611 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11611 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 64]) / (10000 * mem[_11611 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11611 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11611 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7705 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7705 + 128] + 10000:
                                    if mem[_11611 + 32]:
                                        if False and mem[_11611 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11611 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11611 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11611 + 64] and 10000 > -1 / mem[_11611 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11611 + 64] / 10000 != mem[_11611 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11611 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11611 + 64] < 10000 * mem[_11611 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11611 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11611 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11611 + 32]:
                                        if mem[_11611 + 64] and 10000 > -1 / mem[_11611 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11611 + 64] / 10000 != mem[_11611 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11611 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11611 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11611 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11611 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 32]) / mem[_11611 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11611 + 64] and 10000 > -1 / mem[_11611 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11611 + 64] / 10000 != mem[_11611 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11611 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11611 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11611 + 32]) / (10000 * mem[_11611 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                    _7730 = mem[mem[(32 * idx) + 128]]
                    _7731 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _7767 = mem[mem[(32 * idx) + 128] + 64]
                        _7784 = mem[64]
                        _7785 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7785 + 32] = mem[_7785 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _7863 = mem[_7785]
                        s = 0
                        while s < _7863:
                            mem[_7784 + s + 36] = mem[_7785 + s + 32]
                            _7700 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_7863) <= _7863:
                            staticcall address(_7767).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7784 + _7863 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7730):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11586] = return_data.size
                                mem[_11586 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7730):
                                    if mem[_11586 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11586 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11586 + 64]:
                                            if False and mem[_11586 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11586 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11586 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11586 + 32] and 10000 > -1 / mem[_11586 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11586 + 32] / 10000 != mem[_11586 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11586 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11586 + 32] < 10000 * mem[_11586 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11586 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11586 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11586 + 64]:
                                            if mem[_11586 + 32] and 10000 > -1 / mem[_11586 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11586 + 32] / 10000 != mem[_11586 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11586 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11586 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11586 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11586 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 64]) / mem[_11586 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11586 + 32] and 10000 > -1 / mem[_11586 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11586 + 32] / 10000 != mem[_11586 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11586 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11586 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 64]) / (10000 * mem[_11586 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11586 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11586 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11586 + 32]:
                                            if False and mem[_11586 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11586 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11586 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11586 + 64] and 10000 > -1 / mem[_11586 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11586 + 64] / 10000 != mem[_11586 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11586 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11586 + 64] < 10000 * mem[_11586 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11586 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11586 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11586 + 32]:
                                            if mem[_11586 + 64] and 10000 > -1 / mem[_11586 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11586 + 64] / 10000 != mem[_11586 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11586 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11586 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11586 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11586 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 32]) / mem[_11586 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11586 + 64] and 10000 > -1 / mem[_11586 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11586 + 64] / 10000 != mem[_11586 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11586 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11586 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11586 + 32]) / (10000 * mem[_11586 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            mem[_7784 + _7863 + 36] = 0
                            staticcall address(_7767).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7784 + _7863 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7730):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11627] = return_data.size
                                mem[_11627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7730):
                                    if mem[_11627 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11627 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11627 + 64]:
                                            if False and mem[_11627 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11627 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11627 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11627 + 32] and 10000 > -1 / mem[_11627 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11627 + 32] / 10000 != mem[_11627 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11627 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11627 + 32] < 10000 * mem[_11627 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11627 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11627 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11627 + 64]:
                                            if mem[_11627 + 32] and 10000 > -1 / mem[_11627 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11627 + 32] / 10000 != mem[_11627 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11627 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11627 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11627 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11627 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 64]) / mem[_11627 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11627 + 32] and 10000 > -1 / mem[_11627 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11627 + 32] / 10000 != mem[_11627 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11627 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11627 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 64]) / (10000 * mem[_11627 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11627 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11627 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11627 + 32]:
                                            if False and mem[_11627 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11627 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11627 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11627 + 64] and 10000 > -1 / mem[_11627 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11627 + 64] / 10000 != mem[_11627 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11627 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11627 + 64] < 10000 * mem[_11627 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11627 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11627 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11627 + 32]:
                                            if mem[_11627 + 64] and 10000 > -1 / mem[_11627 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11627 + 64] / 10000 != mem[_11627 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11627 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11627 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11627 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11627 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 32]) / mem[_11627 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11627 + 64] and 10000 > -1 / mem[_11627 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11627 + 64] / 10000 != mem[_11627 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11627 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11627 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11627 + 32]) / (10000 * mem[_11627 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _7768 = mem[mem[(32 * idx) + 128] + 64]
                        _7788 = mem[64]
                        _7789 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7789 + 32] = mem[_7789 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _7864 = mem[_7789]
                        s = 0
                        while s < _7864:
                            mem[_7788 + s + 36] = mem[_7789 + s + 32]
                            _7700 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_7864) <= _7864:
                            staticcall address(_7768).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7788 + _7864 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7731):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11588] = return_data.size
                                mem[_11588 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7731):
                                    if mem[_11588 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11588 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11588 + 64]:
                                            if False and mem[_11588 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11588 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11588 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11588 + 32] and 10000 > -1 / mem[_11588 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11588 + 32] / 10000 != mem[_11588 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11588 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11588 + 32] < 10000 * mem[_11588 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11588 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11588 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11588 + 64]:
                                            if mem[_11588 + 32] and 10000 > -1 / mem[_11588 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11588 + 32] / 10000 != mem[_11588 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11588 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11588 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11588 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11588 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 64]) / mem[_11588 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11588 + 32] and 10000 > -1 / mem[_11588 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11588 + 32] / 10000 != mem[_11588 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11588 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11588 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 64]) / (10000 * mem[_11588 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11588 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11588 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11588 + 32]:
                                            if False and mem[_11588 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11588 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11588 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11588 + 64] and 10000 > -1 / mem[_11588 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11588 + 64] / 10000 != mem[_11588 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11588 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11588 + 64] < 10000 * mem[_11588 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11588 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11588 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11588 + 32]:
                                            if mem[_11588 + 64] and 10000 > -1 / mem[_11588 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11588 + 64] / 10000 != mem[_11588 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11588 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11588 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11588 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11588 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 32]) / mem[_11588 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11588 + 64] and 10000 > -1 / mem[_11588 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11588 + 64] / 10000 != mem[_11588 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11588 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11588 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11588 + 32]) / (10000 * mem[_11588 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            mem[_7788 + _7864 + 36] = 0
                            staticcall address(_7768).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7788 + _7864 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7731):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11632 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11632] = return_data.size
                                mem[_11632 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7705 + 12 len 20] == address(_7731):
                                    if mem[_11632 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11632 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11632 + 64]:
                                            if False and mem[_11632 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11632 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11632 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11632 + 32] and 10000 > -1 / mem[_11632 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11632 + 32] / 10000 != mem[_11632 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11632 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11632 + 32] < 10000 * mem[_11632 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11632 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11632 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11632 + 64]:
                                            if mem[_11632 + 32] and 10000 > -1 / mem[_11632 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11632 + 32] / 10000 != mem[_11632 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11632 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11632 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11632 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11632 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 64]) / mem[_11632 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11632 + 32] and 10000 > -1 / mem[_11632 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11632 + 32] / 10000 != mem[_11632 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11632 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11632 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 64]) / (10000 * mem[_11632 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11632 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11632 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7705 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7705 + 128] + 10000:
                                        if mem[_11632 + 32]:
                                            if False and mem[_11632 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11632 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11632 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11632 + 64] and 10000 > -1 / mem[_11632 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11632 + 64] / 10000 != mem[_11632 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11632 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11632 + 64] < 10000 * mem[_11632 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11632 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11632 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11632 + 32]:
                                            if mem[_11632 + 64] and 10000 > -1 / mem[_11632 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11632 + 64] / 10000 != mem[_11632 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11632 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11632 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11632 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11632 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 32]) / mem[_11632 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11632 + 64] and 10000 > -1 / mem[_11632 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11632 + 64] / 10000 != mem[_11632 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11632 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11632 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11632 + 32]) / (10000 * mem[_11632 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                        if mem[mem[(32 * idx) + 128] + 160] != 5:
                            if mem[mem[(32 * idx) + 128] + 160] == 7:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0
                            else:
                                if mem[mem[(32 * idx) + 128] + 160] != 8:
                                    if mem[mem[(32 * idx) + 128] + 160] != 13:
                                        require mem[mem[(32 * idx) + 128] + 160] == 14
                                        _7811 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        _7846 = mem[(32 * idx) + _3853 + 32]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 36] = address(_7811)
                                        mem[mem[64] + 68] = _7846
                                        require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                        staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4], address(_7811), _7846
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8528 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8528] == mem[_8528]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = mem[_8528]
                                    else:
                                        _7776 = mem[mem[(32 * idx) + 128]]
                                        _7777 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        _7813 = mem[(32 * idx) + _3853 + 32]
                                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 68] = address(_7777)
                                        mem[mem[64] + 100] = _7813
                                        require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                        staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                gas gas_remaining wei
                                               args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_7776), address(_7777), _7813
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8792 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_8792] == mem[_8792]
                                        require mem[_8792 + 32] == mem[_8792 + 32]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = mem[_8792]
                                else:
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    _7779 = mem[(32 * idx) + _3853 + 32]
                                    _7817 = mem[mem[(32 * idx) + 128] + 32]
                                    _7849 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                                    mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                    mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                                    _7851 = sha3(address(_7817), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                                    if stor[_7849] == sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_7817)]:
                                        revert with 0, 'BAD CURVE'
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                        _7881 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64] + 4] = stor[_7849]
                                        mem[mem[64] + 36] = stor[_7851]
                                        mem[mem[64] + 68] = _7779
                                        require ext_code.size(address(_7881))
                                        staticcall address(_7881).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args stor[_7849], stor[_7851], _7779
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8475 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8475] == mem[_8475]
                                        if mem[_8475] and 9996 > -1 / mem[_8475]:
                                            revert with 'NH{q', 17
                                        if 9996 * mem[_8475] / 10000 < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (9996 * mem[_8475] / 10000) - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                            _7887 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7849')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7851')))
                                            mem[mem[64] + 68] = _7779
                                            require ext_code.size(address(_7887))
                                            staticcall address(_7887).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_7849'))), ('signextend', 15, ('stor', ('var', '_7851'))), _7779
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8530 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_8530] == mem[_8530]
                                            if mem[_8530] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = mem[_8530] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                                _7893 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7849')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7851')))
                                                mem[mem[64] + 68] = _7779
                                                require ext_code.size(address(_7893))
                                                staticcall address(_7893).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_7849'))), ('signextend', 15, ('stor', ('var', '_7851'))), _7779
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8566 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_8566] == mem[_8566]
                                                if mem[_8566] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = mem[_8566] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                    revert with 0, 'bad curve'
                                                _7901 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7849')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7851')))
                                                mem[mem[64] + 68] = _7779
                                                require ext_code.size(address(_7901))
                                                staticcall address(_7901).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_7849'))), ('signextend', 15, ('stor', ('var', '_7851'))), _7779
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _8610 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_8610] == mem[_8610]
                                                if mem[_8610] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = mem[_8610] - 1
                        else:
                            _7749 = mem[mem[(32 * idx) + 128] + 96]
                            _7757 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_7757 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_7757]:
                                revert with 'NH{q', 50
                            mem[_7757 + 32] = mem[_7705 + 12 len 20]
                            if 1 >= mem[_7757]:
                                revert with 'NH{q', 50
                            mem[_7757 + 64] = mem[_7705 + 44 len 20]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            _7861 = mem[(32 * idx) + _3853 + 32]
                            mem[_7757 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_7757 + 100] = _7861
                            mem[_7757 + 132] = 64
                            mem[_7757 + 164] = mem[_7757]
                            s = 0
                            t = _7757 + 32
                            u = _7757 + 196
                            while s < mem[_7757]:
                                mem[u] = mem[t + 12 len 20]
                                _7700 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_7749))
                            staticcall address(_7749).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7757 + (32 * mem[_7757]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11566 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _11612 = mem[_11566]
                            require mem[_11566] <= test266151307()
                            require _11566 + mem[_11566] + 31 < _11566 + return_data.size
                            _11768 = mem[_11566 + mem[_11566]]
                            if mem[_11566 + mem[_11566]] > test266151307():
                                revert with 'NH{q', 65
                            if _11566 + ceil32(return_data.size) + floor32(mem[_11566 + mem[_11566]]) + 1 > test266151307() or floor32(mem[_11566 + mem[_11566]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _11566 + ceil32(return_data.size) + floor32(mem[_11566 + mem[_11566]]) + 1
                            mem[_11566 + ceil32(return_data.size)] = _11768
                            require _11612 + (32 * _11768) + 32 <= return_data.size
                            s = 0
                            t = _11566 + _11612 + 32
                            u = _11566 + ceil32(return_data.size) + 32
                            while s < _11768:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _7700 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _11768 < 1:
                                revert with 'NH{q', 17
                            if _11768 - 1 >= _11768:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_3853]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _3853 + 32] = mem[(32 * _11768 - 1) + _11566 + ceil32(return_data.size) + 32]
                    else:
                        _7743 = mem[mem[(32 * idx) + 128]]
                        _7744 = mem[mem[(32 * idx) + 128] + 32]
                        if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                            _7782 = mem[mem[(32 * idx) + 128] + 64]
                            _7820 = mem[64]
                            _7821 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7821 + 32] = mem[_7821 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _7873 = mem[_7821]
                            s = 0
                            while s < _7873:
                                mem[_7820 + s + 36] = mem[_7821 + s + 32]
                                _7700 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_7873) <= _7873:
                                staticcall address(_7782).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _7820 + _7873 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7743):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[160]:
                                                if False and mem[160] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[128]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[128]:
                                                if False and mem[128] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[160]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    _11582 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11582] = return_data.size
                                    mem[_11582 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7743):
                                        if mem[_11582 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11582 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11582 + 64]:
                                                if False and mem[_11582 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11582 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11582 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11582 + 32] and 10000 > -1 / mem[_11582 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11582 + 32] / 10000 != mem[_11582 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11582 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11582 + 32] < 10000 * mem[_11582 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11582 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11582 + 32]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11582 + 64]:
                                                if mem[_11582 + 32] and 10000 > -1 / mem[_11582 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11582 + 32] / 10000 != mem[_11582 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11582 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11582 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11582 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11582 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 64]) / mem[_11582 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11582 + 32] and 10000 > -1 / mem[_11582 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11582 + 32] / 10000 != mem[_11582 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11582 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11582 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 64]) / (10000 * mem[_11582 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[_11582 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11582 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11582 + 32]:
                                                if False and mem[_11582 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11582 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11582 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11582 + 64] and 10000 > -1 / mem[_11582 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11582 + 64] / 10000 != mem[_11582 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11582 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11582 + 64] < 10000 * mem[_11582 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11582 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11582 + 64]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11582 + 32]:
                                                if mem[_11582 + 64] and 10000 > -1 / mem[_11582 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11582 + 64] / 10000 != mem[_11582 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11582 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11582 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11582 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11582 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 32]) / mem[_11582 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11582 + 64] and 10000 > -1 / mem[_11582 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11582 + 64] / 10000 != mem[_11582 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11582 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11582 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11582 + 32]) / (10000 * mem[_11582 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                mem[_7820 + _7873 + 36] = 0
                                staticcall address(_7782).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _7820 + _7873 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7743):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[160]:
                                                if False and mem[160] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[128]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[128]:
                                                if False and mem[128] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[160]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    _11617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11617] = return_data.size
                                    mem[_11617 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7743):
                                        if mem[_11617 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11617 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11617 + 64]:
                                                if False and mem[_11617 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11617 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11617 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11617 + 32] and 10000 > -1 / mem[_11617 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11617 + 32] / 10000 != mem[_11617 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11617 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11617 + 32] < 10000 * mem[_11617 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11617 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11617 + 32]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11617 + 64]:
                                                if mem[_11617 + 32] and 10000 > -1 / mem[_11617 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11617 + 32] / 10000 != mem[_11617 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11617 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11617 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11617 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11617 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 64]) / mem[_11617 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11617 + 32] and 10000 > -1 / mem[_11617 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11617 + 32] / 10000 != mem[_11617 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11617 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11617 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 64]) / (10000 * mem[_11617 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[_11617 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11617 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11617 + 32]:
                                                if False and mem[_11617 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11617 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11617 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11617 + 64] and 10000 > -1 / mem[_11617 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11617 + 64] / 10000 != mem[_11617 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11617 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11617 + 64] < 10000 * mem[_11617 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11617 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11617 + 64]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11617 + 32]:
                                                if mem[_11617 + 64] and 10000 > -1 / mem[_11617 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11617 + 64] / 10000 != mem[_11617 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11617 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11617 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11617 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11617 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 32]) / mem[_11617 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11617 + 64] and 10000 > -1 / mem[_11617 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11617 + 64] / 10000 != mem[_11617 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11617 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11617 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11617 + 32]) / (10000 * mem[_11617 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _7783 = mem[mem[(32 * idx) + 128] + 64]
                            _7824 = mem[64]
                            _7825 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_7825 + 32] = mem[_7825 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _7874 = mem[_7825]
                            s = 0
                            while s < _7874:
                                mem[_7824 + s + 36] = mem[_7825 + s + 32]
                                _7700 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_7874) <= _7874:
                                staticcall address(_7783).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _7824 + _7874 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7744):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[160]:
                                                if False and mem[160] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[128]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[128]:
                                                if False and mem[128] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[160]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    _11584 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11584] = return_data.size
                                    mem[_11584 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7744):
                                        if mem[_11584 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11584 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11584 + 64]:
                                                if False and mem[_11584 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11584 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11584 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11584 + 32] and 10000 > -1 / mem[_11584 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11584 + 32] / 10000 != mem[_11584 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11584 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11584 + 32] < 10000 * mem[_11584 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11584 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11584 + 32]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11584 + 64]:
                                                if mem[_11584 + 32] and 10000 > -1 / mem[_11584 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11584 + 32] / 10000 != mem[_11584 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11584 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11584 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11584 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11584 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 64]) / mem[_11584 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11584 + 32] and 10000 > -1 / mem[_11584 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11584 + 32] / 10000 != mem[_11584 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11584 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11584 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 64]) / (10000 * mem[_11584 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[_11584 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11584 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11584 + 32]:
                                                if False and mem[_11584 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11584 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11584 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11584 + 64] and 10000 > -1 / mem[_11584 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11584 + 64] / 10000 != mem[_11584 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11584 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11584 + 64] < 10000 * mem[_11584 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11584 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11584 + 64]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11584 + 32]:
                                                if mem[_11584 + 64] and 10000 > -1 / mem[_11584 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11584 + 64] / 10000 != mem[_11584 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11584 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11584 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11584 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11584 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 32]) / mem[_11584 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11584 + 64] and 10000 > -1 / mem[_11584 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11584 + 64] / 10000 != mem[_11584 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11584 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11584 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11584 + 32]) / (10000 * mem[_11584 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                mem[_7824 + _7874 + 36] = 0
                                staticcall address(_7783).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _7824 + _7874 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7744):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[160]:
                                                if False and mem[160] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[128]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[128]:
                                                if False and mem[128] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[160]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    _11622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_11622] = return_data.size
                                    mem[_11622 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _3853 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_7705 + 12 len 20] == address(_7744):
                                        if mem[_11622 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11622 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11622 + 64]:
                                                if False and mem[_11622 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11622 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11622 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11622 + 32] and 10000 > -1 / mem[_11622 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11622 + 32] / 10000 != mem[_11622 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11622 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11622 + 32] < 10000 * mem[_11622 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11622 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11622 + 32]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11622 + 64]:
                                                if mem[_11622 + 32] and 10000 > -1 / mem[_11622 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11622 + 32] / 10000 != mem[_11622 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11622 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11622 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11622 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11622 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 64]) / mem[_11622 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11622 + 32] and 10000 > -1 / mem[_11622 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11622 + 32] / 10000 != mem[_11622 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11622 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11622 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 64]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 64]) / (10000 * mem[_11622 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if mem[_11622 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_11622 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_7705 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7705 + 128] + 10000:
                                            if mem[_11622 + 32]:
                                                if False and mem[_11622 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_11622 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_11622 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11622 + 64] and 10000 > -1 / mem[_11622 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11622 + 64] / 10000 != mem[_11622 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11622 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11622 + 64] < 10000 * mem[_11622 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_11622 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11622 + 64]
                                        else:
                                            if mem[(32 * idx) + _3853 + 32] and -mem[_7705 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_7705 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7705 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_11622 + 32]:
                                                if mem[_11622 + 64] and 10000 > -1 / mem[_11622 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11622 + 64] / 10000 != mem[_11622 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11622 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11622 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11622 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_11622 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 32]) / mem[_11622 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_11622 + 64] and 10000 > -1 / mem[_11622 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_11622 + 64] / 10000 != mem[_11622 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_11622 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11622 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_3853]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11622 + 32]) / (10000 * mem[_11622 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7705 + 128] * mem[(32 * idx) + _3853 + 32])
            if idx == -1:
                revert with 'NH{q', 17
            _7700 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _7716 = mem[_3853]
        mem[mem[64] + 32] = mem[_3853]
        mem[mem[64] + 64 len 32 * _7716] = mem[_3853 + 32 len 32 * _7716]
        return 32, mem[mem[64] + 32 len (32 * _7716) + 32]
    mem[_3853 + 32 len 32 * _3851 + 1] = call.data[calldata.size len 32 * _3851 + 1]
    if 0 >= mem[_3853]:
        revert with 'NH{q', 50
    mem[_3853 + 32] = cd[4]
    _7701 = mem[96]
    idx = 0
    while idx < _7701:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _7708 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _7714 = mem[mem[(32 * idx) + 128]]
            _7715 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _7720 = mem[mem[(32 * idx) + 128] + 64]
                _7732 = mem[64]
                _7733 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7733 + 32] = mem[_7733 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _7759 = mem[_7733]
                s = 0
                while s < _7759:
                    mem[_7732 + s + 36] = mem[_7733 + s + 32]
                    _7701 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_7759) <= _7759:
                    staticcall address(_7720).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7732 + _7759 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7714):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _11590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_11590] = return_data.size
                        mem[_11590 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7714):
                            if mem[_11590 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11590 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11590 + 64]:
                                    if False and mem[_11590 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11590 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11590 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11590 + 32] and 10000 > -1 / mem[_11590 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11590 + 32] / 10000 != mem[_11590 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11590 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11590 + 32] < 10000 * mem[_11590 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11590 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11590 + 32]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11590 + 64]:
                                    if mem[_11590 + 32] and 10000 > -1 / mem[_11590 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11590 + 32] / 10000 != mem[_11590 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11590 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11590 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11590 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11590 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 64]) / mem[_11590 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11590 + 32] and 10000 > -1 / mem[_11590 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11590 + 32] / 10000 != mem[_11590 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11590 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11590 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 64]) / (10000 * mem[_11590 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[_11590 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11590 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11590 + 32]:
                                    if False and mem[_11590 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11590 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11590 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11590 + 64] and 10000 > -1 / mem[_11590 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11590 + 64] / 10000 != mem[_11590 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11590 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11590 + 64] < 10000 * mem[_11590 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11590 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11590 + 64]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11590 + 32]:
                                    if mem[_11590 + 64] and 10000 > -1 / mem[_11590 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11590 + 64] / 10000 != mem[_11590 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11590 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11590 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11590 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11590 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 32]) / mem[_11590 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11590 + 64] and 10000 > -1 / mem[_11590 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11590 + 64] / 10000 != mem[_11590 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11590 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11590 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11590 + 32]) / (10000 * mem[_11590 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                else:
                    mem[_7732 + _7759 + 36] = 0
                    staticcall address(_7720).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7732 + _7759 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7714):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _11637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_11637] = return_data.size
                        mem[_11637 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7714):
                            if mem[_11637 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11637 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11637 + 64]:
                                    if False and mem[_11637 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11637 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11637 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11637 + 32] and 10000 > -1 / mem[_11637 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11637 + 32] / 10000 != mem[_11637 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11637 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11637 + 32] < 10000 * mem[_11637 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11637 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11637 + 32]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11637 + 64]:
                                    if mem[_11637 + 32] and 10000 > -1 / mem[_11637 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11637 + 32] / 10000 != mem[_11637 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11637 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11637 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11637 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11637 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 64]) / mem[_11637 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11637 + 32] and 10000 > -1 / mem[_11637 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11637 + 32] / 10000 != mem[_11637 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11637 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11637 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 64]) / (10000 * mem[_11637 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[_11637 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11637 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11637 + 32]:
                                    if False and mem[_11637 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11637 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11637 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11637 + 64] and 10000 > -1 / mem[_11637 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11637 + 64] / 10000 != mem[_11637 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11637 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11637 + 64] < 10000 * mem[_11637 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11637 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11637 + 64]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11637 + 32]:
                                    if mem[_11637 + 64] and 10000 > -1 / mem[_11637 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11637 + 64] / 10000 != mem[_11637 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11637 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11637 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11637 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11637 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 32]) / mem[_11637 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11637 + 64] and 10000 > -1 / mem[_11637 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11637 + 64] / 10000 != mem[_11637 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11637 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11637 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11637 + 32]) / (10000 * mem[_11637 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
            else:
                _7721 = mem[mem[(32 * idx) + 128] + 64]
                _7736 = mem[64]
                _7737 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_7737 + 32] = mem[_7737 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _7760 = mem[_7737]
                s = 0
                while s < _7760:
                    mem[_7736 + s + 36] = mem[_7737 + s + 32]
                    _7701 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_7760) <= _7760:
                    staticcall address(_7721).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7736 + _7760 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7715):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _11592 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_11592] = return_data.size
                        mem[_11592 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7715):
                            if mem[_11592 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11592 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11592 + 64]:
                                    if False and mem[_11592 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11592 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11592 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11592 + 32] and 10000 > -1 / mem[_11592 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11592 + 32] / 10000 != mem[_11592 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11592 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11592 + 32] < 10000 * mem[_11592 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11592 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11592 + 32]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11592 + 64]:
                                    if mem[_11592 + 32] and 10000 > -1 / mem[_11592 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11592 + 32] / 10000 != mem[_11592 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11592 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11592 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11592 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11592 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 64]) / mem[_11592 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11592 + 32] and 10000 > -1 / mem[_11592 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11592 + 32] / 10000 != mem[_11592 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11592 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11592 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 64]) / (10000 * mem[_11592 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[_11592 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11592 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11592 + 32]:
                                    if False and mem[_11592 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11592 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11592 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11592 + 64] and 10000 > -1 / mem[_11592 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11592 + 64] / 10000 != mem[_11592 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11592 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11592 + 64] < 10000 * mem[_11592 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11592 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11592 + 64]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11592 + 32]:
                                    if mem[_11592 + 64] and 10000 > -1 / mem[_11592 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11592 + 64] / 10000 != mem[_11592 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11592 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11592 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11592 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11592 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 32]) / mem[_11592 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11592 + 64] and 10000 > -1 / mem[_11592 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11592 + 64] / 10000 != mem[_11592 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11592 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11592 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11592 + 32]) / (10000 * mem[_11592 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                else:
                    mem[_7736 + _7760 + 36] = 0
                    staticcall address(_7721).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _7736 + _7760 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7715):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[160]:
                                    if False and mem[160] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[128] and 10000 > -1 / mem[128]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] / 10000 != mem[128]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[128] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[128] < 10000 * mem[128]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[128]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[128]:
                                    if False and mem[128] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[160] and 10000 > -1 / mem[160]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] / 10000 != mem[160]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[160] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[160] < 10000 * mem[160]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[160]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _11642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_11642] = return_data.size
                        mem[_11642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _3853 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_7708 + 12 len 20] == address(_7715):
                            if mem[_11642 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11642 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11642 + 64]:
                                    if False and mem[_11642 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11642 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11642 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11642 + 32] and 10000 > -1 / mem[_11642 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11642 + 32] / 10000 != mem[_11642 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11642 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11642 + 32] < 10000 * mem[_11642 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11642 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11642 + 32]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11642 + 64]:
                                    if mem[_11642 + 32] and 10000 > -1 / mem[_11642 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11642 + 32] / 10000 != mem[_11642 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11642 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11642 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11642 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11642 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 64]) / mem[_11642 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11642 + 32] and 10000 > -1 / mem[_11642 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11642 + 32] / 10000 != mem[_11642 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11642 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11642 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 64]) / (10000 * mem[_11642 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            if mem[_11642 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_11642 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_7708 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_7708 + 128] + 10000:
                                if mem[_11642 + 32]:
                                    if False and mem[_11642 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_11642 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_11642 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_11642 + 64] and 10000 > -1 / mem[_11642 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11642 + 64] / 10000 != mem[_11642 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_11642 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_11642 + 64] < 10000 * mem[_11642 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_11642 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_3853]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11642 + 64]
                            else:
                                if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_11642 + 32]:
                                    if mem[_11642 + 64] and 10000 > -1 / mem[_11642 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11642 + 64] / 10000 != mem[_11642 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11642 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11642 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11642 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_11642 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 32]) / mem[_11642 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11642 + 64] and 10000 > -1 / mem[_11642 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11642 + 64] / 10000 != mem[_11642 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11642 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11642 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11642 + 32]) / (10000 * mem[_11642 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
        else:
            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                _7740 = mem[mem[(32 * idx) + 128]]
                _7741 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _7772 = mem[mem[(32 * idx) + 128] + 64]
                    _7802 = mem[64]
                    _7803 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7803 + 32] = mem[_7803 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _7868 = mem[_7803]
                    s = 0
                    while s < _7868:
                        mem[_7802 + s + 36] = mem[_7803 + s + 32]
                        _7701 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_7868) <= _7868:
                        staticcall address(_7772).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7802 + _7868 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7740):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11598] = return_data.size
                            mem[_11598 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7740):
                                if mem[_11598 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11598 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11598 + 64]:
                                        if False and mem[_11598 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11598 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11598 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11598 + 32] and 10000 > -1 / mem[_11598 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11598 + 32] / 10000 != mem[_11598 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11598 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11598 + 32] < 10000 * mem[_11598 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11598 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11598 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11598 + 64]:
                                        if mem[_11598 + 32] and 10000 > -1 / mem[_11598 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11598 + 32] / 10000 != mem[_11598 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11598 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11598 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11598 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11598 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 64]) / mem[_11598 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11598 + 32] and 10000 > -1 / mem[_11598 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11598 + 32] / 10000 != mem[_11598 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11598 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11598 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 64]) / (10000 * mem[_11598 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11598 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11598 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11598 + 32]:
                                        if False and mem[_11598 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11598 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11598 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11598 + 64] and 10000 > -1 / mem[_11598 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11598 + 64] / 10000 != mem[_11598 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11598 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11598 + 64] < 10000 * mem[_11598 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11598 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11598 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11598 + 32]:
                                        if mem[_11598 + 64] and 10000 > -1 / mem[_11598 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11598 + 64] / 10000 != mem[_11598 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11598 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11598 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11598 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11598 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 32]) / mem[_11598 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11598 + 64] and 10000 > -1 / mem[_11598 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11598 + 64] / 10000 != mem[_11598 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11598 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11598 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11598 + 32]) / (10000 * mem[_11598 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        mem[_7802 + _7868 + 36] = 0
                        staticcall address(_7772).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7802 + _7868 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7740):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11658] = return_data.size
                            mem[_11658 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7740):
                                if mem[_11658 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11658 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11658 + 64]:
                                        if False and mem[_11658 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11658 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11658 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11658 + 32] and 10000 > -1 / mem[_11658 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11658 + 32] / 10000 != mem[_11658 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11658 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11658 + 32] < 10000 * mem[_11658 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11658 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11658 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11658 + 64]:
                                        if mem[_11658 + 32] and 10000 > -1 / mem[_11658 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11658 + 32] / 10000 != mem[_11658 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11658 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11658 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11658 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11658 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 64]) / mem[_11658 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11658 + 32] and 10000 > -1 / mem[_11658 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11658 + 32] / 10000 != mem[_11658 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11658 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11658 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 64]) / (10000 * mem[_11658 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11658 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11658 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11658 + 32]:
                                        if False and mem[_11658 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11658 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11658 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11658 + 64] and 10000 > -1 / mem[_11658 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11658 + 64] / 10000 != mem[_11658 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11658 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11658 + 64] < 10000 * mem[_11658 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11658 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11658 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11658 + 32]:
                                        if mem[_11658 + 64] and 10000 > -1 / mem[_11658 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11658 + 64] / 10000 != mem[_11658 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11658 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11658 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11658 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11658 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 32]) / mem[_11658 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11658 + 64] and 10000 > -1 / mem[_11658 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11658 + 64] / 10000 != mem[_11658 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11658 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11658 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11658 + 32]) / (10000 * mem[_11658 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                else:
                    _7773 = mem[mem[(32 * idx) + 128] + 64]
                    _7806 = mem[64]
                    _7807 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_7807 + 32] = mem[_7807 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _7869 = mem[_7807]
                    s = 0
                    while s < _7869:
                        mem[_7806 + s + 36] = mem[_7807 + s + 32]
                        _7701 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_7869) <= _7869:
                        staticcall address(_7773).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7806 + _7869 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7741):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11600] = return_data.size
                            mem[_11600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7741):
                                if mem[_11600 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11600 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11600 + 64]:
                                        if False and mem[_11600 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11600 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11600 + 32] and 10000 > -1 / mem[_11600 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11600 + 32] / 10000 != mem[_11600 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11600 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11600 + 32] < 10000 * mem[_11600 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11600 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11600 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11600 + 64]:
                                        if mem[_11600 + 32] and 10000 > -1 / mem[_11600 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11600 + 32] / 10000 != mem[_11600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11600 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11600 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11600 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11600 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 64]) / mem[_11600 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11600 + 32] and 10000 > -1 / mem[_11600 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11600 + 32] / 10000 != mem[_11600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11600 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11600 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 64]) / (10000 * mem[_11600 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11600 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11600 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11600 + 32]:
                                        if False and mem[_11600 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11600 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11600 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11600 + 64] and 10000 > -1 / mem[_11600 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11600 + 64] / 10000 != mem[_11600 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11600 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11600 + 64] < 10000 * mem[_11600 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11600 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11600 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11600 + 32]:
                                        if mem[_11600 + 64] and 10000 > -1 / mem[_11600 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11600 + 64] / 10000 != mem[_11600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11600 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11600 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11600 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11600 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 32]) / mem[_11600 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11600 + 64] and 10000 > -1 / mem[_11600 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11600 + 64] / 10000 != mem[_11600 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11600 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11600 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11600 + 32]) / (10000 * mem[_11600 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        mem[_7806 + _7869 + 36] = 0
                        staticcall address(_7773).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7806 + _7869 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7741):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[160]:
                                        if False and mem[160] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[128]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[128]:
                                        if False and mem[128] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[160]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            _11663 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_11663] = return_data.size
                            mem[_11663 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _3853 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_7708 + 12 len 20] == address(_7741):
                                if mem[_11663 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11663 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11663 + 64]:
                                        if False and mem[_11663 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11663 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11663 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11663 + 32] and 10000 > -1 / mem[_11663 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11663 + 32] / 10000 != mem[_11663 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11663 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11663 + 32] < 10000 * mem[_11663 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11663 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11663 + 32]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11663 + 64]:
                                        if mem[_11663 + 32] and 10000 > -1 / mem[_11663 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11663 + 32] / 10000 != mem[_11663 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11663 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11663 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11663 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11663 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 64]) / mem[_11663 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11663 + 32] and 10000 > -1 / mem[_11663 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11663 + 32] / 10000 != mem[_11663 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11663 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11663 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 64]) / (10000 * mem[_11663 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                if mem[_11663 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_11663 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_7708 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_7708 + 128] + 10000:
                                    if mem[_11663 + 32]:
                                        if False and mem[_11663 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_11663 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_11663 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_11663 + 64] and 10000 > -1 / mem[_11663 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11663 + 64] / 10000 != mem[_11663 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_11663 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_11663 + 64] < 10000 * mem[_11663 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_11663 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11663 + 64]
                                else:
                                    if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_11663 + 32]:
                                        if mem[_11663 + 64] and 10000 > -1 / mem[_11663 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11663 + 64] / 10000 != mem[_11663 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11663 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11663 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11663 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_11663 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 32]) / mem[_11663 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11663 + 64] and 10000 > -1 / mem[_11663 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11663 + 64] / 10000 != mem[_11663 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11663 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11663 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11663 + 32]) / (10000 * mem[_11663 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                    if mem[mem[(32 * idx) + 128] + 160] != 5:
                        if mem[mem[(32 * idx) + 128] + 160] == 7:
                            if idx >= mem[_3853]:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_3853]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _3853 + 32] = 0
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] != 8:
                                if mem[mem[(32 * idx) + 128] + 160] != 13:
                                    require mem[mem[(32 * idx) + 128] + 160] == 14
                                    _7829 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    _7853 = mem[(32 * idx) + _3853 + 32]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 36] = address(_7829)
                                    mem[mem[64] + 68] = _7853
                                    require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                    staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], address(_7829), _7853
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8547] == mem[_8547]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = mem[_8547]
                                else:
                                    _7794 = mem[mem[(32 * idx) + 128]]
                                    _7795 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    _7831 = mem[(32 * idx) + _3853 + 32]
                                    mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 68] = address(_7795)
                                    mem[mem[64] + 100] = _7831
                                    require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                    staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                            gas gas_remaining wei
                                           args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_7794), address(_7795), _7831
                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8810 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    require mem[_8810] == mem[_8810]
                                    require mem[_8810 + 32] == mem[_8810 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = mem[_8810]
                            else:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                _7797 = mem[(32 * idx) + _3853 + 32]
                                _7835 = mem[mem[(32 * idx) + 128] + 32]
                                _7856 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                                _7858 = sha3(address(_7835), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                                if stor[_7856] == sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_7835)]:
                                    revert with 0, 'BAD CURVE'
                                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                    _7884 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64] + 4] = stor[_7856]
                                    mem[mem[64] + 36] = stor[_7858]
                                    mem[mem[64] + 68] = _7797
                                    require ext_code.size(address(_7884))
                                    staticcall address(_7884).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args stor[_7856], stor[_7858], _7797
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8502 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8502] == mem[_8502]
                                    if mem[_8502] and 9996 > -1 / mem[_8502]:
                                        revert with 'NH{q', 17
                                    if 9996 * mem[_8502] / 10000 < 1:
                                        revert with 'NH{q', 17
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_3853]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _3853 + 32] = (9996 * mem[_8502] / 10000) - 1
                                else:
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                        _7890 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7856')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7858')))
                                        mem[mem[64] + 68] = _7797
                                        require ext_code.size(address(_7890))
                                        staticcall address(_7890).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_7856'))), ('signextend', 15, ('stor', ('var', '_7858'))), _7797
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8549 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8549] == mem[_8549]
                                        if mem[_8549] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = mem[_8549] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            _7896 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7856')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7858')))
                                            mem[mem[64] + 68] = _7797
                                            require ext_code.size(address(_7896))
                                            staticcall address(_7896).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_7856'))), ('signextend', 15, ('stor', ('var', '_7858'))), _7797
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8584 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_8584] == mem[_8584]
                                            if mem[_8584] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = mem[_8584] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                revert with 0, 'bad curve'
                                            _7907 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_7856')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_7858')))
                                            mem[mem[64] + 68] = _7797
                                            require ext_code.size(address(_7907))
                                            staticcall address(_7907).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_7856'))), ('signextend', 15, ('stor', ('var', '_7858'))), _7797
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _8644 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_8644] == mem[_8644]
                                            if mem[_8644] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = mem[_8644] - 1
                    else:
                        _7751 = mem[mem[(32 * idx) + 128] + 96]
                        _7763 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_7763 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_7763]:
                            revert with 'NH{q', 50
                        mem[_7763 + 32] = mem[_7708 + 12 len 20]
                        if 1 >= mem[_7763]:
                            revert with 'NH{q', 50
                        mem[_7763 + 64] = mem[_7708 + 44 len 20]
                        if idx >= mem[_3853]:
                            revert with 'NH{q', 50
                        _7866 = mem[(32 * idx) + _3853 + 32]
                        mem[_7763 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_7763 + 100] = _7866
                        mem[_7763 + 132] = 64
                        mem[_7763 + 164] = mem[_7763]
                        s = 0
                        t = _7763 + 32
                        u = _7763 + 196
                        while s < mem[_7763]:
                            mem[u] = mem[t + 12 len 20]
                            _7701 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_7751))
                        staticcall address(_7751).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _7763 + (32 * mem[_7763]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11573 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11643 = mem[_11573]
                        require mem[_11573] <= test266151307()
                        require _11573 + mem[_11573] + 31 < _11573 + return_data.size
                        _11793 = mem[_11573 + mem[_11573]]
                        if mem[_11573 + mem[_11573]] > test266151307():
                            revert with 'NH{q', 65
                        if _11573 + ceil32(return_data.size) + floor32(mem[_11573 + mem[_11573]]) + 1 > test266151307() or floor32(mem[_11573 + mem[_11573]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _11573 + ceil32(return_data.size) + floor32(mem[_11573 + mem[_11573]]) + 1
                        mem[_11573 + ceil32(return_data.size)] = _11793
                        require _11643 + (32 * _11793) + 32 <= return_data.size
                        s = 0
                        t = _11573 + _11643 + 32
                        u = _11573 + ceil32(return_data.size) + 32
                        while s < _11793:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _7701 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _11793 < 1:
                            revert with 'NH{q', 17
                        if _11793 - 1 >= _11793:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_3853]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _3853 + 32] = mem[(32 * _11793 - 1) + _11573 + ceil32(return_data.size) + 32]
                else:
                    _7746 = mem[mem[(32 * idx) + 128]]
                    _7747 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _7800 = mem[mem[(32 * idx) + 128] + 64]
                        _7838 = mem[64]
                        _7839 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7839 + 32] = mem[_7839 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _7878 = mem[_7839]
                        s = 0
                        while s < _7878:
                            mem[_7838 + s + 36] = mem[_7839 + s + 32]
                            _7701 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_7878) <= _7878:
                            staticcall address(_7800).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7838 + _7878 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7746):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11594 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11594] = return_data.size
                                mem[_11594 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7746):
                                    if mem[_11594 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11594 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11594 + 64]:
                                            if False and mem[_11594 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11594 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11594 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11594 + 32] and 10000 > -1 / mem[_11594 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11594 + 32] / 10000 != mem[_11594 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11594 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11594 + 32] < 10000 * mem[_11594 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11594 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11594 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11594 + 64]:
                                            if mem[_11594 + 32] and 10000 > -1 / mem[_11594 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11594 + 32] / 10000 != mem[_11594 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11594 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11594 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11594 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11594 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 64]) / mem[_11594 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11594 + 32] and 10000 > -1 / mem[_11594 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11594 + 32] / 10000 != mem[_11594 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11594 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11594 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 64]) / (10000 * mem[_11594 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11594 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11594 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11594 + 32]:
                                            if False and mem[_11594 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11594 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11594 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11594 + 64] and 10000 > -1 / mem[_11594 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11594 + 64] / 10000 != mem[_11594 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11594 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11594 + 64] < 10000 * mem[_11594 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11594 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11594 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11594 + 32]:
                                            if mem[_11594 + 64] and 10000 > -1 / mem[_11594 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11594 + 64] / 10000 != mem[_11594 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11594 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11594 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11594 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11594 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 32]) / mem[_11594 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11594 + 64] and 10000 > -1 / mem[_11594 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11594 + 64] / 10000 != mem[_11594 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11594 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11594 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11594 + 32]) / (10000 * mem[_11594 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            mem[_7838 + _7878 + 36] = 0
                            staticcall address(_7800).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7838 + _7878 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7746):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11648 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11648] = return_data.size
                                mem[_11648 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7746):
                                    if mem[_11648 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11648 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11648 + 64]:
                                            if False and mem[_11648 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11648 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11648 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11648 + 32] and 10000 > -1 / mem[_11648 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11648 + 32] / 10000 != mem[_11648 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11648 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11648 + 32] < 10000 * mem[_11648 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11648 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11648 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11648 + 64]:
                                            if mem[_11648 + 32] and 10000 > -1 / mem[_11648 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11648 + 32] / 10000 != mem[_11648 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11648 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11648 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11648 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11648 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 64]) / mem[_11648 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11648 + 32] and 10000 > -1 / mem[_11648 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11648 + 32] / 10000 != mem[_11648 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11648 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11648 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 64]) / (10000 * mem[_11648 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11648 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11648 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11648 + 32]:
                                            if False and mem[_11648 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11648 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11648 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11648 + 64] and 10000 > -1 / mem[_11648 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11648 + 64] / 10000 != mem[_11648 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11648 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11648 + 64] < 10000 * mem[_11648 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11648 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11648 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11648 + 32]:
                                            if mem[_11648 + 64] and 10000 > -1 / mem[_11648 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11648 + 64] / 10000 != mem[_11648 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11648 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11648 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11648 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11648 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 32]) / mem[_11648 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11648 + 64] and 10000 > -1 / mem[_11648 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11648 + 64] / 10000 != mem[_11648 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11648 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11648 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11648 + 32]) / (10000 * mem[_11648 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                    else:
                        _7801 = mem[mem[(32 * idx) + 128] + 64]
                        _7842 = mem[64]
                        _7843 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_7843 + 32] = mem[_7843 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _7879 = mem[_7843]
                        s = 0
                        while s < _7879:
                            mem[_7842 + s + 36] = mem[_7843 + s + 32]
                            _7701 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_7879) <= _7879:
                            staticcall address(_7801).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7842 + _7879 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7747):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11596 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11596] = return_data.size
                                mem[_11596 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7747):
                                    if mem[_11596 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11596 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11596 + 64]:
                                            if False and mem[_11596 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11596 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11596 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11596 + 32] and 10000 > -1 / mem[_11596 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11596 + 32] / 10000 != mem[_11596 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11596 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11596 + 32] < 10000 * mem[_11596 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11596 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11596 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11596 + 64]:
                                            if mem[_11596 + 32] and 10000 > -1 / mem[_11596 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11596 + 32] / 10000 != mem[_11596 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11596 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11596 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11596 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11596 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 64]) / mem[_11596 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11596 + 32] and 10000 > -1 / mem[_11596 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11596 + 32] / 10000 != mem[_11596 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11596 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11596 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 64]) / (10000 * mem[_11596 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11596 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11596 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11596 + 32]:
                                            if False and mem[_11596 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11596 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11596 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11596 + 64] and 10000 > -1 / mem[_11596 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11596 + 64] / 10000 != mem[_11596 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11596 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11596 + 64] < 10000 * mem[_11596 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11596 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11596 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11596 + 32]:
                                            if mem[_11596 + 64] and 10000 > -1 / mem[_11596 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11596 + 64] / 10000 != mem[_11596 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11596 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11596 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11596 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11596 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 32]) / mem[_11596 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11596 + 64] and 10000 > -1 / mem[_11596 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11596 + 64] / 10000 != mem[_11596 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11596 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11596 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11596 + 32]) / (10000 * mem[_11596 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                        else:
                            mem[_7842 + _7879 + 36] = 0
                            staticcall address(_7801).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _7842 + _7879 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7747):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[160]:
                                            if False and mem[160] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[128]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[160]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[128]:
                                            if False and mem[128] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[160]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[128]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                            else:
                                _11653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_11653] = return_data.size
                                mem[_11653 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_3853]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _3853 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_7708 + 12 len 20] == address(_7747):
                                    if mem[_11653 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11653 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11653 + 64]:
                                            if False and mem[_11653 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11653 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11653 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11653 + 32] and 10000 > -1 / mem[_11653 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11653 + 32] / 10000 != mem[_11653 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11653 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11653 + 32] < 10000 * mem[_11653 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11653 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11653 + 32]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11653 + 64]:
                                            if mem[_11653 + 32] and 10000 > -1 / mem[_11653 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11653 + 32] / 10000 != mem[_11653 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11653 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11653 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11653 + 64] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11653 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 64]) / mem[_11653 + 64] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11653 + 32] and 10000 > -1 / mem[_11653 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11653 + 32] / 10000 != mem[_11653 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11653 + 32] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11653 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 64]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 64]) / (10000 * mem[_11653 + 32]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                else:
                                    if mem[_11653 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_11653 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_7708 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_7708 + 128] + 10000:
                                        if mem[_11653 + 32]:
                                            if False and mem[_11653 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_11653 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_11653 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_11653 + 64] and 10000 > -1 / mem[_11653 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11653 + 64] / 10000 != mem[_11653 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_11653 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_11653 + 64] < 10000 * mem[_11653 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_11653 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_3853]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _3853 + 32] = 0 / 10000 * mem[_11653 + 64]
                                    else:
                                        if mem[(32 * idx) + _3853 + 32] and -mem[_7708 + 128] + 10000 > -1 / mem[(32 * idx) + _3853 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_7708 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) / -mem[_7708 + 128] + 10000 != mem[(32 * idx) + _3853 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_11653 + 32]:
                                            if mem[_11653 + 64] and 10000 > -1 / mem[_11653 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11653 + 64] / 10000 != mem[_11653 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11653 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11653 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = 0 / (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) and mem[_11653 + 32] > -1 / (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_11653 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 32]) / mem[_11653 + 32] != (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_11653 + 64] and 10000 > -1 / mem[_11653 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_11653 + 64] / 10000 != mem[_11653 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_11653 + 64] > (-10000 * mem[(32 * idx) + _3853 + 32]) + (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]) < 10000 * mem[_11653 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_3853]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _3853 + 32] = (10000 * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32] * mem[_11653 + 32]) / (10000 * mem[_11653 + 64]) + (10000 * mem[(32 * idx) + _3853 + 32]) - (mem[_7708 + 128] * mem[(32 * idx) + _3853 + 32])
        if idx == -1:
            revert with 'NH{q', 17
        _7701 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _7717 = mem[_3853]
    mem[mem[64] + 32] = mem[_3853]
    mem[mem[64] + 64 len 32 * _7717] = mem[_3853 + 32 len 32 * _7717]
    return 32, mem[mem[64] + 32 len (32 * _7717) + 32]
}



}
