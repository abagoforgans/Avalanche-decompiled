contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_10fec347(?)
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
    if uint256(sub_f119462d[address(arg5)][address(arg2)]) == uint256(sub_f119462d[address(arg5)][address(arg3)]):
        revert with 0, 'BAD CURVE'
    if address(arg5) == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        require ext_code.size(address(arg5))
        call address(arg5).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args uint256(sub_f119462d[address(arg5)][address(arg2)]), uint256(sub_f119462d[address(arg5)][address(arg3)]), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(arg5) == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
        require ext_code.size(address(arg5))
        call address(arg5).exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(arg5) == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
        require ext_code.size(address(arg5))
        call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if address(arg5) == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
            require ext_code.size(address(arg5))
            call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(arg5) == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                require ext_code.size(address(arg5))
                call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if address(arg5) == 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                    require ext_code.size(address(arg5))
                    call address(arg5).exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
        _286 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_286] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_286 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_286 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_286 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_286 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_286 + 160] = cd[(s + 160)]
        mem[t] = _286
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
        if mem[mem[128] + 12 len 20] == mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20]:
            if mem[mem[128] + 160] == 1:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                    if mem[96] <= 3:
                        if mem[96] == 2:
                            return 1
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if stor1[mem[0]]:
                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                            if stor1[mem[0]]:
                                return 1
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                        if mem[96] <= 3:
                            if mem[96] == 2:
                                return 1
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if stor1[mem[0]]:
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                if stor1[mem[0]]:
                                    return 1
                    else:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                            if mem[96] <= 3:
                                if mem[96] == 2:
                                    return 1
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if stor1[mem[0]]:
                                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                    if stor1[mem[0]]:
                                        return 1
                        else:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                if mem[96] <= 3:
                                    if mem[96] == 2:
                                        return 1
                                    mem[0] = mem[mem[128] + 44 len 20]
                                    mem[32] = 1
                                    if stor1[mem[0]]:
                                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                        if stor1[mem[0]]:
                                            return 1
            else:
                if mem[mem[128] + 160] == 7:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                        if mem[96] <= 3:
                            if mem[96] == 2:
                                return 1
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if stor1[mem[0]]:
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                if stor1[mem[0]]:
                                    return 1
                    else:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                            if mem[96] <= 3:
                                if mem[96] == 2:
                                    return 1
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if stor1[mem[0]]:
                                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                    if stor1[mem[0]]:
                                        return 1
                        else:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                if mem[96] <= 3:
                                    if mem[96] == 2:
                                        return 1
                                    mem[0] = mem[mem[128] + 44 len 20]
                                    mem[32] = 1
                                    if stor1[mem[0]]:
                                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                        if stor1[mem[0]]:
                                            return 1
                            else:
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                    if mem[96] <= 3:
                                        if mem[96] == 2:
                                            return 1
                                        mem[0] = mem[mem[128] + 44 len 20]
                                        mem[32] = 1
                                        if stor1[mem[0]]:
                                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                            if stor1[mem[0]]:
                                                return 1
                else:
                    if mem[mem[128] + 160] == 13:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                            if mem[96] <= 3:
                                if mem[96] == 2:
                                    return 1
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if stor1[mem[0]]:
                                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                    if stor1[mem[0]]:
                                        return 1
                        else:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                                if mem[96] <= 3:
                                    if mem[96] == 2:
                                        return 1
                                    mem[0] = mem[mem[128] + 44 len 20]
                                    mem[32] = 1
                                    if stor1[mem[0]]:
                                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                        if stor1[mem[0]]:
                                            return 1
                            else:
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                    if mem[96] <= 3:
                                        if mem[96] == 2:
                                            return 1
                                        mem[0] = mem[mem[128] + 44 len 20]
                                        mem[32] = 1
                                        if stor1[mem[0]]:
                                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                            if stor1[mem[0]]:
                                                return 1
                                else:
                                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                        if mem[96] <= 3:
                                            if mem[96] == 2:
                                                return 1
                                            mem[0] = mem[mem[128] + 44 len 20]
                                            mem[32] = 1
                                            if stor1[mem[0]]:
                                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                                if stor1[mem[0]]:
                                                    return 1
                    else:
                        if mem[mem[128] + 160] == 14:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                                if mem[96] <= 3:
                                    if mem[96] == 2:
                                        return 1
                                    mem[0] = mem[mem[128] + 44 len 20]
                                    mem[32] = 1
                                    if stor1[mem[0]]:
                                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                        if stor1[mem[0]]:
                                            return 1
                            else:
                                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                                    if mem[96] <= 3:
                                        if mem[96] == 2:
                                            return 1
                                        mem[0] = mem[mem[128] + 44 len 20]
                                        mem[32] = 1
                                        if stor1[mem[0]]:
                                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                            if stor1[mem[0]]:
                                                return 1
                                else:
                                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                                        if mem[96] <= 3:
                                            if mem[96] == 2:
                                                return 1
                                            mem[0] = mem[mem[128] + 44 len 20]
                                            mem[32] = 1
                                            if stor1[mem[0]]:
                                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                                if stor1[mem[0]]:
                                                    return 1
                                    else:
                                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 14:
                                            if mem[96] <= 3:
                                                if mem[96] == 2:
                                                    return 1
                                                mem[0] = mem[mem[128] + 44 len 20]
                                                mem[32] = 1
                                                if stor1[mem[0]]:
                                                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                                    if stor1[mem[0]]:
                                                        return 1
    return 0
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
    if uint256(sub_f119462d[address(arg5)][address(arg2)]) == uint256(sub_f119462d[address(arg5)][address(arg3)]):
        revert with 0, 'BAD CURVE'
    if address(arg5) != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        if address(arg5) != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
            if address(arg5) != 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                if address(arg5) != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    if address(arg5) != 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                        if address(arg5) != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                            revert with 'NH{q', 17
            require ext_code.size(address(arg5))
            staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            require ext_code.size(address(arg5))
            staticcall address(arg5).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if address(arg5) == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                require ext_code.size(address(arg5))
                staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if address(arg5) == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if address(arg5) == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if address(arg5) == 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
    else:
        require ext_code.size(address(arg5))
        staticcall address(arg5).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args uint256(sub_f119462d[address(arg5)][address(arg2)]), uint256(sub_f119462d[address(arg5)][address(arg3)]), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 9996 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if address(arg5) != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
            if address(arg5) != 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                if address(arg5) != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    if address(arg5) != 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                        if address(arg5) != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                            if 9996 * ext_call.return_data[0] / 10000 < 1:
                                revert with 'NH{q', 17
                            return ((9996 * ext_call.return_data[0] / 10000) - 1)
            require ext_code.size(address(arg5))
            staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            require ext_code.size(address(arg5))
            staticcall address(arg5).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if address(arg5) == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                require ext_code.size(address(arg5))
                staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if address(arg5) == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    require ext_code.size(address(arg5))
                    staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if address(arg5) == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                        require ext_code.size(address(arg5))
                        staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if address(arg5) == 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                            require ext_code.size(address(arg5))
                            staticcall address(arg5).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), ('signextend', 15, ('type', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg5')), ('name', 'sub_f119462d', 0)))))), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - 1)
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
        _1361 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_1361] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_1361 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_1361 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_1361 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_1361 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_1361 + 160] = cd[(s + 160)]
        mem[t] = _1361
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
    if mem[mem[128] + 12 len 20] != mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20]:
        return cd[4]
    if mem[mem[128] + 160] == 1:
        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
            if mem[96] > 3:
                return cd[4]
            if mem[96] == 2:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _1459 = mem[128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1628 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_1459 + 12 len 20]
                mem[mem[64] + 36] = mem[_1459 + 44 len 20]
                mem[mem[64] + 68] = mem[_1459 + 76 len 20]
                mem[mem[64] + 100] = mem[_1459 + 108 len 20]
                mem[mem[64] + 132] = mem[_1459 + 128]
                mem[mem[64] + 164] = mem[_1459 + 160]
                mem[mem[64] + 196] = mem[_1628 + 12 len 20]
                mem[mem[64] + 228] = mem[_1628 + 44 len 20]
                mem[mem[64] + 260] = mem[_1628 + 76 len 20]
                mem[mem[64] + 292] = mem[_1628 + 108 len 20]
                mem[mem[64] + 324] = mem[_1628 + 128]
                mem[mem[64] + 356] = mem[_1628 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2161] == bool(mem[_2161])
                _2249 = mem[_2161 + 32]
                require mem[_2161 + 32] == mem[_2161 + 32]
                if not mem[_2161]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2291 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_2291))
                staticcall address(_2291).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2461] == mem[_2461]
                if _2249 < mem[_2461]:
                    if _2249:
                        return _2249
                    return cd[4]
                if not mem[_2461]:
                    return cd[4]
                mem[mem[64]] = mem[_2461]
            else:
                mem[0] = mem[mem[128] + 44 len 20]
                mem[32] = 1
                if not stor1[mem[0]]:
                    return cd[4]
                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                mem[32] = 1
                if not stor1[mem[0]]:
                    return cd[4]
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _1525 = mem[128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1691 = mem[(32 * mem[96] - 1) + 128]
                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = mem[_1525 + 12 len 20]
                mem[mem[64] + 36] = mem[_1525 + 44 len 20]
                mem[mem[64] + 68] = mem[_1525 + 76 len 20]
                mem[mem[64] + 100] = mem[_1525 + 108 len 20]
                mem[mem[64] + 132] = mem[_1525 + 128]
                mem[mem[64] + 164] = mem[_1525 + 160]
                mem[mem[64] + 196] = mem[_1691 + 12 len 20]
                mem[mem[64] + 228] = mem[_1691 + 44 len 20]
                mem[mem[64] + 260] = mem[_1691 + 76 len 20]
                mem[mem[64] + 292] = mem[_1691 + 108 len 20]
                mem[mem[64] + 324] = mem[_1691 + 128]
                mem[mem[64] + 356] = mem[_1691 + 160]
                require ext_code.size(stor3)
                staticcall stor3.0x6fbc9807 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len 384]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_2187] == bool(mem[_2187])
                _2262 = mem[_2187 + 32]
                require mem[_2187 + 32] == mem[_2187 + 32]
                if not mem[_2187]:
                    revert with 0, 'B'
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _2347 = mem[mem[128]]
                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                require ext_code.size(address(_2347))
                staticcall address(_2347).0x70a08231 with:
                        gas gas_remaining wei
                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2501] == mem[_2501]
                if _2262 < mem[_2501]:
                    if _2262:
                        return _2262
                    return cd[4]
                if not mem[_2501]:
                    return cd[4]
                mem[mem[64]] = mem[_2501]
        else:
            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                if mem[96] > 3:
                    return cd[4]
                if mem[96] == 2:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1479 = mem[128]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1645 = mem[(32 * mem[96] - 1) + 128]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_1479 + 12 len 20]
                    mem[mem[64] + 36] = mem[_1479 + 44 len 20]
                    mem[mem[64] + 68] = mem[_1479 + 76 len 20]
                    mem[mem[64] + 100] = mem[_1479 + 108 len 20]
                    mem[mem[64] + 132] = mem[_1479 + 128]
                    mem[mem[64] + 164] = mem[_1479 + 160]
                    mem[mem[64] + 196] = mem[_1645 + 12 len 20]
                    mem[mem[64] + 228] = mem[_1645 + 44 len 20]
                    mem[mem[64] + 260] = mem[_1645 + 76 len 20]
                    mem[mem[64] + 292] = mem[_1645 + 108 len 20]
                    mem[mem[64] + 324] = mem[_1645 + 128]
                    mem[mem[64] + 356] = mem[_1645 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2168] == bool(mem[_2168])
                    _2253 = mem[_2168 + 32]
                    require mem[_2168 + 32] == mem[_2168 + 32]
                    if not mem[_2168]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _2303 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_2303))
                    staticcall address(_2303).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2472] == mem[_2472]
                    if _2253 < mem[_2472]:
                        if _2253:
                            return _2253
                        return cd[4]
                    if not mem[_2472]:
                        return cd[4]
                    mem[mem[64]] = mem[_2472]
                else:
                    mem[0] = mem[mem[128] + 44 len 20]
                    mem[32] = 1
                    if not stor1[mem[0]]:
                        return cd[4]
                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                    mem[32] = 1
                    if not stor1[mem[0]]:
                        return cd[4]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1546 = mem[128]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1717 = mem[(32 * mem[96] - 1) + 128]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_1546 + 12 len 20]
                    mem[mem[64] + 36] = mem[_1546 + 44 len 20]
                    mem[mem[64] + 68] = mem[_1546 + 76 len 20]
                    mem[mem[64] + 100] = mem[_1546 + 108 len 20]
                    mem[mem[64] + 132] = mem[_1546 + 128]
                    mem[mem[64] + 164] = mem[_1546 + 160]
                    mem[mem[64] + 196] = mem[_1717 + 12 len 20]
                    mem[mem[64] + 228] = mem[_1717 + 44 len 20]
                    mem[mem[64] + 260] = mem[_1717 + 76 len 20]
                    mem[mem[64] + 292] = mem[_1717 + 108 len 20]
                    mem[mem[64] + 324] = mem[_1717 + 128]
                    mem[mem[64] + 356] = mem[_1717 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2199] == bool(mem[_2199])
                    _2267 = mem[_2199 + 32]
                    require mem[_2199 + 32] == mem[_2199 + 32]
                    if not mem[_2199]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _2372 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_2372))
                    staticcall address(_2372).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2516 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2516] == mem[_2516]
                    if _2267 < mem[_2516]:
                        if _2267:
                            return _2267
                        return cd[4]
                    if not mem[_2516]:
                        return cd[4]
                    mem[mem[64]] = mem[_2516]
            else:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                    if mem[96] > 3:
                        return cd[4]
                    if mem[96] == 2:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1499 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1662 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1499 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1499 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1499 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1499 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1499 + 128]
                        mem[mem[64] + 164] = mem[_1499 + 160]
                        mem[mem[64] + 196] = mem[_1662 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1662 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1662 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1662 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1662 + 128]
                        mem[mem[64] + 356] = mem[_1662 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2176 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2176] == bool(mem[_2176])
                        _2257 = mem[_2176 + 32]
                        require mem[_2176 + 32] == mem[_2176 + 32]
                        if not mem[_2176]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2320 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2320))
                        staticcall address(_2320).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2485] == mem[_2485]
                        if _2257 < mem[_2485]:
                            if _2257:
                                return _2257
                            return cd[4]
                        if not mem[_2485]:
                            return cd[4]
                        mem[mem[64]] = mem[_2485]
                    else:
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1569 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1743 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1569 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1569 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1569 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1569 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1569 + 128]
                        mem[mem[64] + 164] = mem[_1569 + 160]
                        mem[mem[64] + 196] = mem[_1743 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1743 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1743 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1743 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1743 + 128]
                        mem[mem[64] + 356] = mem[_1743 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2210 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2210] == bool(mem[_2210])
                        _2272 = mem[_2210 + 32]
                        require mem[_2210 + 32] == mem[_2210 + 32]
                        if not mem[_2210]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2397 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2397))
                        staticcall address(_2397).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2529] == mem[_2529]
                        if _2272 < mem[_2529]:
                            if _2272:
                                return _2272
                            return cd[4]
                        if not mem[_2529]:
                            return cd[4]
                        mem[mem[64]] = mem[_2529]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                        return cd[4]
                    if mem[96] > 3:
                        return cd[4]
                    if mem[96] == 2:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1520 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1685 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1520 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1520 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1520 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1520 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1520 + 128]
                        mem[mem[64] + 164] = mem[_1520 + 160]
                        mem[mem[64] + 196] = mem[_1685 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1685 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1685 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1685 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1685 + 128]
                        mem[mem[64] + 356] = mem[_1685 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2185] == bool(mem[_2185])
                        _2261 = mem[_2185 + 32]
                        require mem[_2185 + 32] == mem[_2185 + 32]
                        if not mem[_2185]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2342 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2342))
                        staticcall address(_2342).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2499] == mem[_2499]
                        if _2261 < mem[_2499]:
                            if _2261:
                                return _2261
                            return cd[4]
                        if not mem[_2499]:
                            return cd[4]
                        mem[mem[64]] = mem[_2499]
                    else:
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1590 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1766 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1590 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1590 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1590 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1590 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1590 + 128]
                        mem[mem[64] + 164] = mem[_1590 + 160]
                        mem[mem[64] + 196] = mem[_1766 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1766 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1766 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1766 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1766 + 128]
                        mem[mem[64] + 356] = mem[_1766 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2221] == bool(mem[_2221])
                        _2277 = mem[_2221 + 32]
                        require mem[_2221 + 32] == mem[_2221 + 32]
                        if not mem[_2221]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2418 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2418))
                        staticcall address(_2418).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2541] == mem[_2541]
                        if _2277 < mem[_2541]:
                            if _2277:
                                return _2277
                            return cd[4]
                        if not mem[_2541]:
                            return cd[4]
                        mem[mem[64]] = mem[_2541]
    else:
        if mem[mem[128] + 160] == 7:
            if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                if mem[96] > 3:
                    return cd[4]
                if mem[96] == 2:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1475 = mem[128]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1641 = mem[(32 * mem[96] - 1) + 128]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_1475 + 12 len 20]
                    mem[mem[64] + 36] = mem[_1475 + 44 len 20]
                    mem[mem[64] + 68] = mem[_1475 + 76 len 20]
                    mem[mem[64] + 100] = mem[_1475 + 108 len 20]
                    mem[mem[64] + 132] = mem[_1475 + 128]
                    mem[mem[64] + 164] = mem[_1475 + 160]
                    mem[mem[64] + 196] = mem[_1641 + 12 len 20]
                    mem[mem[64] + 228] = mem[_1641 + 44 len 20]
                    mem[mem[64] + 260] = mem[_1641 + 76 len 20]
                    mem[mem[64] + 292] = mem[_1641 + 108 len 20]
                    mem[mem[64] + 324] = mem[_1641 + 128]
                    mem[mem[64] + 356] = mem[_1641 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2166] == bool(mem[_2166])
                    _2252 = mem[_2166 + 32]
                    require mem[_2166 + 32] == mem[_2166 + 32]
                    if not mem[_2166]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _2298 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_2298))
                    staticcall address(_2298).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2469] == mem[_2469]
                    if _2252 < mem[_2469]:
                        if _2252:
                            return _2252
                        return cd[4]
                    if not mem[_2469]:
                        return cd[4]
                    mem[mem[64]] = mem[_2469]
                else:
                    mem[0] = mem[mem[128] + 44 len 20]
                    mem[32] = 1
                    if not stor1[mem[0]]:
                        return cd[4]
                    mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                    mem[32] = 1
                    if not stor1[mem[0]]:
                        return cd[4]
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _1542 = mem[128]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1711 = mem[(32 * mem[96] - 1) + 128]
                    mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = mem[_1542 + 12 len 20]
                    mem[mem[64] + 36] = mem[_1542 + 44 len 20]
                    mem[mem[64] + 68] = mem[_1542 + 76 len 20]
                    mem[mem[64] + 100] = mem[_1542 + 108 len 20]
                    mem[mem[64] + 132] = mem[_1542 + 128]
                    mem[mem[64] + 164] = mem[_1542 + 160]
                    mem[mem[64] + 196] = mem[_1711 + 12 len 20]
                    mem[mem[64] + 228] = mem[_1711 + 44 len 20]
                    mem[mem[64] + 260] = mem[_1711 + 76 len 20]
                    mem[mem[64] + 292] = mem[_1711 + 108 len 20]
                    mem[mem[64] + 324] = mem[_1711 + 128]
                    mem[mem[64] + 356] = mem[_1711 + 160]
                    require ext_code.size(stor3)
                    staticcall stor3.0x6fbc9807 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len 384]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_2196] == bool(mem[_2196])
                    _2266 = mem[_2196 + 32]
                    require mem[_2196 + 32] == mem[_2196 + 32]
                    if not mem[_2196]:
                        revert with 0, 'B'
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _2367 = mem[mem[128]]
                    mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    require ext_code.size(address(_2367))
                    staticcall address(_2367).0x70a08231 with:
                            gas gas_remaining wei
                           args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2513] == mem[_2513]
                    if _2266 < mem[_2513]:
                        if _2266:
                            return _2266
                        return cd[4]
                    if not mem[_2513]:
                        return cd[4]
                    mem[mem[64]] = mem[_2513]
            else:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                    if mem[96] > 3:
                        return cd[4]
                    if mem[96] == 2:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1494 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1658 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1494 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1494 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1494 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1494 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1494 + 128]
                        mem[mem[64] + 164] = mem[_1494 + 160]
                        mem[mem[64] + 196] = mem[_1658 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1658 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1658 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1658 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1658 + 128]
                        mem[mem[64] + 356] = mem[_1658 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2174] == bool(mem[_2174])
                        _2256 = mem[_2174 + 32]
                        require mem[_2174 + 32] == mem[_2174 + 32]
                        if not mem[_2174]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2315 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2315))
                        staticcall address(_2315).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2482] == mem[_2482]
                        if _2256 < mem[_2482]:
                            if _2256:
                                return _2256
                            return cd[4]
                        if not mem[_2482]:
                            return cd[4]
                        mem[mem[64]] = mem[_2482]
                    else:
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1564 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1738 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1564 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1564 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1564 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1564 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1564 + 128]
                        mem[mem[64] + 164] = mem[_1564 + 160]
                        mem[mem[64] + 196] = mem[_1738 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1738 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1738 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1738 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1738 + 128]
                        mem[mem[64] + 356] = mem[_1738 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2208] == bool(mem[_2208])
                        _2271 = mem[_2208 + 32]
                        require mem[_2208 + 32] == mem[_2208 + 32]
                        if not mem[_2208]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2392 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2392))
                        staticcall address(_2392).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2527] == mem[_2527]
                        if _2271 < mem[_2527]:
                            if _2271:
                                return _2271
                            return cd[4]
                        if not mem[_2527]:
                            return cd[4]
                        mem[mem[64]] = mem[_2527]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                        if mem[96] > 3:
                            return cd[4]
                        if mem[96] == 2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1516 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1679 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1516 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1516 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1516 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1516 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1516 + 128]
                            mem[mem[64] + 164] = mem[_1516 + 160]
                            mem[mem[64] + 196] = mem[_1679 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1679 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1679 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1679 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1679 + 128]
                            mem[mem[64] + 356] = mem[_1679 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2183 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2183] == bool(mem[_2183])
                            _2260 = mem[_2183 + 32]
                            require mem[_2183 + 32] == mem[_2183 + 32]
                            if not mem[_2183]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2337 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2337))
                            staticcall address(_2337).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2496 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2496] == mem[_2496]
                            if _2260 < mem[_2496]:
                                if _2260:
                                    return _2260
                                return cd[4]
                            if not mem[_2496]:
                                return cd[4]
                            mem[mem[64]] = mem[_2496]
                        else:
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1586 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1763 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1586 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1586 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1586 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1586 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1586 + 128]
                            mem[mem[64] + 164] = mem[_1586 + 160]
                            mem[mem[64] + 196] = mem[_1763 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1763 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1763 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1763 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1763 + 128]
                            mem[mem[64] + 356] = mem[_1763 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2219] == bool(mem[_2219])
                            _2276 = mem[_2219 + 32]
                            require mem[_2219 + 32] == mem[_2219 + 32]
                            if not mem[_2219]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2415 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2415))
                            staticcall address(_2415).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2539] == mem[_2539]
                            if _2276 < mem[_2539]:
                                if _2276:
                                    return _2276
                                return cd[4]
                            if not mem[_2539]:
                                return cd[4]
                            mem[mem[64]] = mem[_2539]
                    else:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                            return cd[4]
                        if mem[96] > 3:
                            return cd[4]
                        if mem[96] == 2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1537 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1705 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1537 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1537 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1537 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1537 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1537 + 128]
                            mem[mem[64] + 164] = mem[_1537 + 160]
                            mem[mem[64] + 196] = mem[_1705 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1705 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1705 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1705 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1705 + 128]
                            mem[mem[64] + 356] = mem[_1705 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2194] == bool(mem[_2194])
                            _2265 = mem[_2194 + 32]
                            require mem[_2194 + 32] == mem[_2194 + 32]
                            if not mem[_2194]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2362 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2362))
                            staticcall address(_2362).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2511] == mem[_2511]
                            if _2265 < mem[_2511]:
                                if _2265:
                                    return _2265
                                return cd[4]
                            if not mem[_2511]:
                                return cd[4]
                            mem[mem[64]] = mem[_2511]
                        else:
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1605 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1781 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1605 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1605 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1605 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1605 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1605 + 128]
                            mem[mem[64] + 164] = mem[_1605 + 160]
                            mem[mem[64] + 196] = mem[_1781 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1781 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1781 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1781 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1781 + 128]
                            mem[mem[64] + 356] = mem[_1781 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2229 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2229] == bool(mem[_2229])
                            _2280 = mem[_2229 + 32]
                            require mem[_2229 + 32] == mem[_2229 + 32]
                            if not mem[_2229]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2431 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2431))
                            staticcall address(_2431).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2549] == mem[_2549]
                            if _2280 < mem[_2549]:
                                if _2280:
                                    return _2280
                                return cd[4]
                            if not mem[_2549]:
                                return cd[4]
                            mem[mem[64]] = mem[_2549]
        else:
            if mem[mem[128] + 160] == 13:
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                    if mem[96] > 3:
                        return cd[4]
                    if mem[96] == 2:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1490 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1654 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1490 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1490 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1490 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1490 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1490 + 128]
                        mem[mem[64] + 164] = mem[_1490 + 160]
                        mem[mem[64] + 196] = mem[_1654 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1654 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1654 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1654 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1654 + 128]
                        mem[mem[64] + 356] = mem[_1654 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2172] == bool(mem[_2172])
                        _2255 = mem[_2172 + 32]
                        require mem[_2172 + 32] == mem[_2172 + 32]
                        if not mem[_2172]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2310 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2310))
                        staticcall address(_2310).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2479] == mem[_2479]
                        if _2255 < mem[_2479]:
                            if _2255:
                                return _2255
                            return cd[4]
                        if not mem[_2479]:
                            return cd[4]
                        mem[mem[64]] = mem[_2479]
                    else:
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1560 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1732 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1560 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1560 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1560 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1560 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1560 + 128]
                        mem[mem[64] + 164] = mem[_1560 + 160]
                        mem[mem[64] + 196] = mem[_1732 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1732 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1732 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1732 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1732 + 128]
                        mem[mem[64] + 356] = mem[_1732 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2205 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2205] == bool(mem[_2205])
                        _2270 = mem[_2205 + 32]
                        require mem[_2205 + 32] == mem[_2205 + 32]
                        if not mem[_2205]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2387 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2387))
                        staticcall address(_2387).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2524] == mem[_2524]
                        if _2270 < mem[_2524]:
                            if _2270:
                                return _2270
                            return cd[4]
                        if not mem[_2524]:
                            return cd[4]
                        mem[mem[64]] = mem[_2524]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                        if mem[96] > 3:
                            return cd[4]
                        if mem[96] == 2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1511 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1675 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1511 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1511 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1511 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1511 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1511 + 128]
                            mem[mem[64] + 164] = mem[_1511 + 160]
                            mem[mem[64] + 196] = mem[_1675 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1675 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1675 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1675 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1675 + 128]
                            mem[mem[64] + 356] = mem[_1675 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2181 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2181] == bool(mem[_2181])
                            _2259 = mem[_2181 + 32]
                            require mem[_2181 + 32] == mem[_2181 + 32]
                            if not mem[_2181]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2332 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2332))
                            staticcall address(_2332).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2493] == mem[_2493]
                            if _2259 < mem[_2493]:
                                if _2259:
                                    return _2259
                                return cd[4]
                            if not mem[_2493]:
                                return cd[4]
                            mem[mem[64]] = mem[_2493]
                        else:
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1581 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1758 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1581 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1581 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1581 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1581 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1581 + 128]
                            mem[mem[64] + 164] = mem[_1581 + 160]
                            mem[mem[64] + 196] = mem[_1758 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1758 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1758 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1758 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1758 + 128]
                            mem[mem[64] + 356] = mem[_1758 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2217] == bool(mem[_2217])
                            _2275 = mem[_2217 + 32]
                            require mem[_2217 + 32] == mem[_2217 + 32]
                            if not mem[_2217]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2410 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2410))
                            staticcall address(_2410).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2537] == mem[_2537]
                            if _2275 < mem[_2537]:
                                if _2275:
                                    return _2275
                                return cd[4]
                            if not mem[_2537]:
                                return cd[4]
                            mem[mem[64]] = mem[_2537]
                    else:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                            if mem[96] > 3:
                                return cd[4]
                            if mem[96] == 2:
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1533 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1699 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1533 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1533 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1533 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1533 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1533 + 128]
                                mem[mem[64] + 164] = mem[_1533 + 160]
                                mem[mem[64] + 196] = mem[_1699 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1699 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1699 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1699 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1699 + 128]
                                mem[mem[64] + 356] = mem[_1699 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2192 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2192] == bool(mem[_2192])
                                _2264 = mem[_2192 + 32]
                                require mem[_2192 + 32] == mem[_2192 + 32]
                                if not mem[_2192]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2357 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2357))
                                staticcall address(_2357).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2508 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2508] == mem[_2508]
                                if _2264 < mem[_2508]:
                                    if _2264:
                                        return _2264
                                    return cd[4]
                                if not mem[_2508]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2508]
                            else:
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1601 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1778 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1601 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1601 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1601 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1601 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1601 + 128]
                                mem[mem[64] + 164] = mem[_1601 + 160]
                                mem[mem[64] + 196] = mem[_1778 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1778 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1778 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1778 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1778 + 128]
                                mem[mem[64] + 356] = mem[_1778 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2227 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2227] == bool(mem[_2227])
                                _2279 = mem[_2227 + 32]
                                require mem[_2227 + 32] == mem[_2227 + 32]
                                if not mem[_2227]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2428 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2428))
                                staticcall address(_2428).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2547 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2547] == mem[_2547]
                                if _2279 < mem[_2547]:
                                    if _2279:
                                        return _2279
                                    return cd[4]
                                if not mem[_2547]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2547]
                        else:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                                return cd[4]
                            if mem[96] > 3:
                                return cd[4]
                            if mem[96] == 2:
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1555 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1726 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1555 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1555 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1555 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1555 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1555 + 128]
                                mem[mem[64] + 164] = mem[_1555 + 160]
                                mem[mem[64] + 196] = mem[_1726 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1726 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1726 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1726 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1726 + 128]
                                mem[mem[64] + 356] = mem[_1726 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2203] == bool(mem[_2203])
                                _2269 = mem[_2203 + 32]
                                require mem[_2203 + 32] == mem[_2203 + 32]
                                if not mem[_2203]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2382 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2382))
                                staticcall address(_2382).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2522 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2522] == mem[_2522]
                                if _2269 < mem[_2522]:
                                    if _2269:
                                        return _2269
                                    return cd[4]
                                if not mem[_2522]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2522]
                            else:
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1618 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1791 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1618 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1618 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1618 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1618 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1618 + 128]
                                mem[mem[64] + 164] = mem[_1618 + 160]
                                mem[mem[64] + 196] = mem[_1791 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1791 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1791 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1791 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1791 + 128]
                                mem[mem[64] + 356] = mem[_1791 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2235 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2235] == bool(mem[_2235])
                                _2282 = mem[_2235 + 32]
                                require mem[_2235 + 32] == mem[_2235 + 32]
                                if not mem[_2235]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2440 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2440))
                                staticcall address(_2440).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2555] == mem[_2555]
                                if _2282 < mem[_2555]:
                                    if _2282:
                                        return _2282
                                    return cd[4]
                                if not mem[_2555]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2555]
            else:
                if mem[mem[128] + 160] != 14:
                    return cd[4]
                if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 1:
                    if mem[96] > 3:
                        return cd[4]
                    if mem[96] == 2:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1507 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1671 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1507 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1507 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1507 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1507 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1507 + 128]
                        mem[mem[64] + 164] = mem[_1507 + 160]
                        mem[mem[64] + 196] = mem[_1671 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1671 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1671 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1671 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1671 + 128]
                        mem[mem[64] + 356] = mem[_1671 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2179] == bool(mem[_2179])
                        _2258 = mem[_2179 + 32]
                        require mem[_2179 + 32] == mem[_2179 + 32]
                        if not mem[_2179]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2327 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2327))
                        staticcall address(_2327).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2490] == mem[_2490]
                        if _2258 < mem[_2490]:
                            if _2258:
                                return _2258
                            return cd[4]
                        if not mem[_2490]:
                            return cd[4]
                        mem[mem[64]] = mem[_2490]
                    else:
                        mem[0] = mem[mem[128] + 44 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                        mem[32] = 1
                        if not stor1[mem[0]]:
                            return cd[4]
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _1577 = mem[128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _1752 = mem[(32 * mem[96] - 1) + 128]
                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = mem[_1577 + 12 len 20]
                        mem[mem[64] + 36] = mem[_1577 + 44 len 20]
                        mem[mem[64] + 68] = mem[_1577 + 76 len 20]
                        mem[mem[64] + 100] = mem[_1577 + 108 len 20]
                        mem[mem[64] + 132] = mem[_1577 + 128]
                        mem[mem[64] + 164] = mem[_1577 + 160]
                        mem[mem[64] + 196] = mem[_1752 + 12 len 20]
                        mem[mem[64] + 228] = mem[_1752 + 44 len 20]
                        mem[mem[64] + 260] = mem[_1752 + 76 len 20]
                        mem[mem[64] + 292] = mem[_1752 + 108 len 20]
                        mem[mem[64] + 324] = mem[_1752 + 128]
                        mem[mem[64] + 356] = mem[_1752 + 160]
                        require ext_code.size(stor3)
                        staticcall stor3.0x6fbc9807 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len 384]
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        require mem[_2214] == bool(mem[_2214])
                        _2274 = mem[_2214 + 32]
                        require mem[_2214 + 32] == mem[_2214 + 32]
                        if not mem[_2214]:
                            revert with 0, 'B'
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _2405 = mem[mem[128]]
                        mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        require ext_code.size(address(_2405))
                        staticcall address(_2405).0x70a08231 with:
                                gas gas_remaining wei
                               args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2534] == mem[_2534]
                        if _2274 < mem[_2534]:
                            if _2274:
                                return _2274
                            return cd[4]
                        if not mem[_2534]:
                            return cd[4]
                        mem[mem[64]] = mem[_2534]
                else:
                    if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 7:
                        if mem[96] > 3:
                            return cd[4]
                        if mem[96] == 2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1528 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1695 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1528 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1528 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1528 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1528 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1528 + 128]
                            mem[mem[64] + 164] = mem[_1528 + 160]
                            mem[mem[64] + 196] = mem[_1695 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1695 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1695 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1695 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1695 + 128]
                            mem[mem[64] + 356] = mem[_1695 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2190 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2190] == bool(mem[_2190])
                            _2263 = mem[_2190 + 32]
                            require mem[_2190 + 32] == mem[_2190 + 32]
                            if not mem[_2190]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2352 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2352))
                            staticcall address(_2352).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2505 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2505] == mem[_2505]
                            if _2263 < mem[_2505]:
                                if _2263:
                                    return _2263
                                return cd[4]
                            if not mem[_2505]:
                                return cd[4]
                            mem[mem[64]] = mem[_2505]
                        else:
                            mem[0] = mem[mem[128] + 44 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                            mem[32] = 1
                            if not stor1[mem[0]]:
                                return cd[4]
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _1596 = mem[128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1773 = mem[(32 * mem[96] - 1) + 128]
                            mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = mem[_1596 + 12 len 20]
                            mem[mem[64] + 36] = mem[_1596 + 44 len 20]
                            mem[mem[64] + 68] = mem[_1596 + 76 len 20]
                            mem[mem[64] + 100] = mem[_1596 + 108 len 20]
                            mem[mem[64] + 132] = mem[_1596 + 128]
                            mem[mem[64] + 164] = mem[_1596 + 160]
                            mem[mem[64] + 196] = mem[_1773 + 12 len 20]
                            mem[mem[64] + 228] = mem[_1773 + 44 len 20]
                            mem[mem[64] + 260] = mem[_1773 + 76 len 20]
                            mem[mem[64] + 292] = mem[_1773 + 108 len 20]
                            mem[mem[64] + 324] = mem[_1773 + 128]
                            mem[mem[64] + 356] = mem[_1773 + 160]
                            require ext_code.size(stor3)
                            staticcall stor3.0x6fbc9807 with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len 384]
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_2225] == bool(mem[_2225])
                            _2278 = mem[_2225 + 32]
                            require mem[_2225 + 32] == mem[_2225 + 32]
                            if not mem[_2225]:
                                revert with 0, 'B'
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            _2423 = mem[mem[128]]
                            mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            require ext_code.size(address(_2423))
                            staticcall address(_2423).0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2545] == mem[_2545]
                            if _2278 < mem[_2545]:
                                if _2278:
                                    return _2278
                                return cd[4]
                            if not mem[_2545]:
                                return cd[4]
                            mem[mem[64]] = mem[_2545]
                    else:
                        if mem[mem[(32 * mem[96] - 1) + 128] + 160] == 13:
                            if mem[96] > 3:
                                return cd[4]
                            if mem[96] == 2:
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1551 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1720 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1551 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1551 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1551 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1551 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1551 + 128]
                                mem[mem[64] + 164] = mem[_1551 + 160]
                                mem[mem[64] + 196] = mem[_1720 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1720 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1720 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1720 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1720 + 128]
                                mem[mem[64] + 356] = mem[_1720 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2201 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2201] == bool(mem[_2201])
                                _2268 = mem[_2201 + 32]
                                require mem[_2201 + 32] == mem[_2201 + 32]
                                if not mem[_2201]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2377 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2377))
                                staticcall address(_2377).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2519 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2519] == mem[_2519]
                                if _2268 < mem[_2519]:
                                    if _2268:
                                        return _2268
                                    return cd[4]
                                if not mem[_2519]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2519]
                            else:
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1614 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1788 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1614 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1614 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1614 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1614 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1614 + 128]
                                mem[mem[64] + 164] = mem[_1614 + 160]
                                mem[mem[64] + 196] = mem[_1788 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1788 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1788 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1788 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1788 + 128]
                                mem[mem[64] + 356] = mem[_1788 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2233 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2233] == bool(mem[_2233])
                                _2281 = mem[_2233 + 32]
                                require mem[_2233 + 32] == mem[_2233 + 32]
                                if not mem[_2233]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2437 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2437))
                                staticcall address(_2437).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2553] == mem[_2553]
                                if _2281 < mem[_2553]:
                                    if _2281:
                                        return _2281
                                    return cd[4]
                                if not mem[_2553]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2553]
                        else:
                            if mem[mem[(32 * mem[96] - 1) + 128] + 160] != 14:
                                return cd[4]
                            if mem[96] > 3:
                                return cd[4]
                            if mem[96] == 2:
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1572 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1746 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1572 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1572 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1572 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1572 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1572 + 128]
                                mem[mem[64] + 164] = mem[_1572 + 160]
                                mem[mem[64] + 196] = mem[_1746 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1746 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1746 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1746 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1746 + 128]
                                mem[mem[64] + 356] = mem[_1746 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2212 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2212] == bool(mem[_2212])
                                _2273 = mem[_2212 + 32]
                                require mem[_2212 + 32] == mem[_2212 + 32]
                                if not mem[_2212]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2400 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2400))
                                staticcall address(_2400).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2532 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2532] == mem[_2532]
                                if _2273 < mem[_2532]:
                                    if _2273:
                                        return _2273
                                    return cd[4]
                                if not mem[_2532]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2532]
                            else:
                                mem[0] = mem[mem[128] + 44 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                mem[0] = mem[mem[(32 * mem[96] - 1) + 128] + 12 len 20]
                                mem[32] = 1
                                if not stor1[mem[0]]:
                                    return cd[4]
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1631 = mem[128]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1797 = mem[(32 * mem[96] - 1) + 128]
                                mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = mem[_1631 + 12 len 20]
                                mem[mem[64] + 36] = mem[_1631 + 44 len 20]
                                mem[mem[64] + 68] = mem[_1631 + 76 len 20]
                                mem[mem[64] + 100] = mem[_1631 + 108 len 20]
                                mem[mem[64] + 132] = mem[_1631 + 128]
                                mem[mem[64] + 164] = mem[_1631 + 160]
                                mem[mem[64] + 196] = mem[_1797 + 12 len 20]
                                mem[mem[64] + 228] = mem[_1797 + 44 len 20]
                                mem[mem[64] + 260] = mem[_1797 + 76 len 20]
                                mem[mem[64] + 292] = mem[_1797 + 108 len 20]
                                mem[mem[64] + 324] = mem[_1797 + 128]
                                mem[mem[64] + 356] = mem[_1797 + 160]
                                require ext_code.size(stor3)
                                staticcall stor3.0x6fbc9807 with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len 384]
                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2240 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_2240] == bool(mem[_2240])
                                _2285 = mem[_2240 + 32]
                                require mem[_2240 + 32] == mem[_2240 + 32]
                                if not mem[_2240]:
                                    revert with 0, 'B'
                                if 0 >= mem[96]:
                                    revert with 'NH{q', 50
                                _2446 = mem[mem[128]]
                                mem[mem[64] + 4] = 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                require ext_code.size(address(_2446))
                                staticcall address(_2446).0x70a08231 with:
                                        gas gas_remaining wei
                                       args 0x85a92368ab710a85f57b9872c0fe4361a405e5d
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2560 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2560] == mem[_2560]
                                if _2285 < mem[_2560]:
                                    if _2285:
                                        return _2285
                                    return cd[4]
                                if not mem[_2560]:
                                    return cd[4]
                                mem[mem[64]] = mem[_2560]
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
        _4068 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_4068] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_4068 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_4068 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_4068 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_4068 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_4068 + 160] = cd[(s + 160)]
        mem[t] = _4068
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _4067 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _4069 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _4067 + 1) + 32
    if not _4067 + 1:
        if 0 >= mem[_4069]:
            revert with 'NH{q', 50
        mem[_4069 + 32] = cd[4]
        _8132 = mem[96]
        idx = 0
        while idx < _8132:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8137 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _8144 = mem[mem[(32 * idx) + 128]]
                _8145 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _8150 = mem[mem[(32 * idx) + 128] + 64]
                    _8154 = mem[64]
                    _8155 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8155 + 32] = mem[_8155 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8185 = mem[_8155]
                    s = 0
                    while s < _8185:
                        mem[_8154 + s + 36] = mem[_8155 + s + 32]
                        _8132 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8185) <= _8185:
                        staticcall address(_8150).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8154 + _8185 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8144):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12230 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12230] = return_data.size
                            mem[_12230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8144):
                                if mem[_12230 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12230 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12230 + 64]:
                                        if False and mem[_12230 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12230 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12230 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12230 + 32] and 10000 > -1 / mem[_12230 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 32] / 10000 != mem[_12230 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 32] < 10000 * mem[_12230 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12230 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12230 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12230 + 64]:
                                        if mem[_12230 + 32] and 10000 > -1 / mem[_12230 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12230 + 32] / 10000 != mem[_12230 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12230 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12230 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12230 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12230 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 64]) / mem[_12230 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12230 + 32] and 10000 > -1 / mem[_12230 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12230 + 32] / 10000 != mem[_12230 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12230 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12230 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 64]) / (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12230 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12230 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12230 + 32]:
                                        if False and mem[_12230 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12230 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12230 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12230 + 64] and 10000 > -1 / mem[_12230 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 64] / 10000 != mem[_12230 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 64] < 10000 * mem[_12230 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12230 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12230 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12230 + 32]:
                                        if mem[_12230 + 64] and 10000 > -1 / mem[_12230 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12230 + 64] / 10000 != mem[_12230 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12230 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12230 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12230 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12230 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 32]) / mem[_12230 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12230 + 64] and 10000 > -1 / mem[_12230 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12230 + 64] / 10000 != mem[_12230 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12230 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12230 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12230 + 32]) / (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        mem[_8154 + _8185 + 36] = 0
                        staticcall address(_8150).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8154 + _8185 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8144):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12258] = return_data.size
                            mem[_12258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8144):
                                if mem[_12258 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12258 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12258 + 64]:
                                        if False and mem[_12258 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12258 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12258 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12258 + 32] and 10000 > -1 / mem[_12258 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12258 + 32] / 10000 != mem[_12258 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12258 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12258 + 32] < 10000 * mem[_12258 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12258 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12258 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12258 + 64]:
                                        if mem[_12258 + 32] and 10000 > -1 / mem[_12258 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12258 + 32] / 10000 != mem[_12258 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12258 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12258 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12258 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12258 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 64]) / mem[_12258 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12258 + 32] and 10000 > -1 / mem[_12258 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12258 + 32] / 10000 != mem[_12258 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12258 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12258 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 64]) / (10000 * mem[_12258 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12258 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12258 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12258 + 32]:
                                        if False and mem[_12258 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12258 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12258 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12258 + 64] and 10000 > -1 / mem[_12258 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12258 + 64] / 10000 != mem[_12258 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12258 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12258 + 64] < 10000 * mem[_12258 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12258 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12258 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12258 + 32]:
                                        if mem[_12258 + 64] and 10000 > -1 / mem[_12258 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12258 + 64] / 10000 != mem[_12258 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12258 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12258 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12258 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12258 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 32]) / mem[_12258 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12258 + 64] and 10000 > -1 / mem[_12258 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12258 + 64] / 10000 != mem[_12258 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12258 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12258 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12258 + 32]) / (10000 * mem[_12258 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    _8151 = mem[mem[(32 * idx) + 128] + 64]
                    _8158 = mem[64]
                    _8159 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8159 + 32] = mem[_8159 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8186 = mem[_8159]
                    s = 0
                    while s < _8186:
                        mem[_8158 + s + 36] = mem[_8159 + s + 32]
                        _8132 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8186) <= _8186:
                        staticcall address(_8151).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8158 + _8186 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8145):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12232] = return_data.size
                            mem[_12232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8145):
                                if mem[_12232 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12232 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12232 + 64]:
                                        if False and mem[_12232 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12232 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12232 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12232 + 32] and 10000 > -1 / mem[_12232 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 32] / 10000 != mem[_12232 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 32] < 10000 * mem[_12232 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12232 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12232 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12232 + 64]:
                                        if mem[_12232 + 32] and 10000 > -1 / mem[_12232 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12232 + 32] / 10000 != mem[_12232 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12232 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12232 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12232 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12232 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 64]) / mem[_12232 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12232 + 32] and 10000 > -1 / mem[_12232 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12232 + 32] / 10000 != mem[_12232 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12232 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12232 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 64]) / (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12232 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12232 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12232 + 32]:
                                        if False and mem[_12232 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12232 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12232 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12232 + 64] and 10000 > -1 / mem[_12232 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 64] / 10000 != mem[_12232 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 64] < 10000 * mem[_12232 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12232 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12232 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12232 + 32]:
                                        if mem[_12232 + 64] and 10000 > -1 / mem[_12232 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12232 + 64] / 10000 != mem[_12232 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12232 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12232 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12232 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12232 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 32]) / mem[_12232 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12232 + 64] and 10000 > -1 / mem[_12232 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12232 + 64] / 10000 != mem[_12232 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12232 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12232 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12232 + 32]) / (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        mem[_8158 + _8186 + 36] = 0
                        staticcall address(_8151).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8158 + _8186 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8145):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12263 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12263] = return_data.size
                            mem[_12263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8137 + 12 len 20] == address(_8145):
                                if mem[_12263 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12263 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12263 + 64]:
                                        if False and mem[_12263 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12263 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12263 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12263 + 32] and 10000 > -1 / mem[_12263 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12263 + 32] / 10000 != mem[_12263 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12263 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12263 + 32] < 10000 * mem[_12263 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12263 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12263 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12263 + 64]:
                                        if mem[_12263 + 32] and 10000 > -1 / mem[_12263 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12263 + 32] / 10000 != mem[_12263 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12263 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12263 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12263 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12263 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 64]) / mem[_12263 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12263 + 32] and 10000 > -1 / mem[_12263 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12263 + 32] / 10000 != mem[_12263 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12263 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12263 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 64]) / (10000 * mem[_12263 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12263 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12263 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8137 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8137 + 128] + 10000:
                                    if mem[_12263 + 32]:
                                        if False and mem[_12263 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12263 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12263 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12263 + 64] and 10000 > -1 / mem[_12263 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12263 + 64] / 10000 != mem[_12263 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12263 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12263 + 64] < 10000 * mem[_12263 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12263 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12263 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12263 + 32]:
                                        if mem[_12263 + 64] and 10000 > -1 / mem[_12263 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12263 + 64] / 10000 != mem[_12263 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12263 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12263 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12263 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12263 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 32]) / mem[_12263 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12263 + 64] and 10000 > -1 / mem[_12263 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12263 + 64] / 10000 != mem[_12263 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12263 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12263 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12263 + 32]) / (10000 * mem[_12263 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                    _8162 = mem[mem[(32 * idx) + 128]]
                    _8163 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _8198 = mem[mem[(32 * idx) + 128] + 64]
                        _8217 = mem[64]
                        _8218 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8218 + 32] = mem[_8218 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8300 = mem[_8218]
                        s = 0
                        while s < _8300:
                            mem[_8217 + s + 36] = mem[_8218 + s + 32]
                            _8132 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8300) <= _8300:
                            staticcall address(_8198).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8217 + _8300 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8162):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12238] = return_data.size
                                mem[_12238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8162):
                                    if mem[_12238 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12238 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12238 + 64]:
                                            if False and mem[_12238 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12238 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12238 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12238 + 32] and 10000 > -1 / mem[_12238 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 32] / 10000 != mem[_12238 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 32] < 10000 * mem[_12238 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12238 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12238 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12238 + 64]:
                                            if mem[_12238 + 32] and 10000 > -1 / mem[_12238 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12238 + 32] / 10000 != mem[_12238 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12238 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12238 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12238 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12238 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 64]) / mem[_12238 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12238 + 32] and 10000 > -1 / mem[_12238 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12238 + 32] / 10000 != mem[_12238 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12238 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12238 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 64]) / (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12238 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12238 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12238 + 32]:
                                            if False and mem[_12238 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12238 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12238 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12238 + 64] and 10000 > -1 / mem[_12238 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 64] / 10000 != mem[_12238 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 64] < 10000 * mem[_12238 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12238 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12238 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12238 + 32]:
                                            if mem[_12238 + 64] and 10000 > -1 / mem[_12238 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12238 + 64] / 10000 != mem[_12238 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12238 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12238 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12238 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12238 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 32]) / mem[_12238 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12238 + 64] and 10000 > -1 / mem[_12238 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12238 + 64] / 10000 != mem[_12238 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12238 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12238 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12238 + 32]) / (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            mem[_8217 + _8300 + 36] = 0
                            staticcall address(_8198).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8217 + _8300 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8162):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12279 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12279] = return_data.size
                                mem[_12279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8162):
                                    if mem[_12279 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12279 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12279 + 64]:
                                            if False and mem[_12279 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12279 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12279 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12279 + 32] and 10000 > -1 / mem[_12279 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12279 + 32] / 10000 != mem[_12279 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12279 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12279 + 32] < 10000 * mem[_12279 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12279 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12279 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12279 + 64]:
                                            if mem[_12279 + 32] and 10000 > -1 / mem[_12279 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12279 + 32] / 10000 != mem[_12279 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12279 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12279 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12279 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12279 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 64]) / mem[_12279 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12279 + 32] and 10000 > -1 / mem[_12279 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12279 + 32] / 10000 != mem[_12279 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12279 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12279 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 64]) / (10000 * mem[_12279 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12279 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12279 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12279 + 32]:
                                            if False and mem[_12279 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12279 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12279 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12279 + 64] and 10000 > -1 / mem[_12279 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12279 + 64] / 10000 != mem[_12279 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12279 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12279 + 64] < 10000 * mem[_12279 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12279 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12279 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12279 + 32]:
                                            if mem[_12279 + 64] and 10000 > -1 / mem[_12279 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12279 + 64] / 10000 != mem[_12279 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12279 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12279 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12279 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12279 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 32]) / mem[_12279 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12279 + 64] and 10000 > -1 / mem[_12279 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12279 + 64] / 10000 != mem[_12279 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12279 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12279 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12279 + 32]) / (10000 * mem[_12279 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _8199 = mem[mem[(32 * idx) + 128] + 64]
                        _8221 = mem[64]
                        _8222 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8222 + 32] = mem[_8222 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8301 = mem[_8222]
                        s = 0
                        while s < _8301:
                            mem[_8221 + s + 36] = mem[_8222 + s + 32]
                            _8132 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8301) <= _8301:
                            staticcall address(_8199).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8221 + _8301 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8163):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12240 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12240] = return_data.size
                                mem[_12240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8163):
                                    if mem[_12240 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12240 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12240 + 64]:
                                            if False and mem[_12240 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12240 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12240 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12240 + 32] and 10000 > -1 / mem[_12240 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 32] / 10000 != mem[_12240 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 32] < 10000 * mem[_12240 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12240 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12240 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12240 + 64]:
                                            if mem[_12240 + 32] and 10000 > -1 / mem[_12240 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12240 + 32] / 10000 != mem[_12240 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12240 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12240 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12240 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12240 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 64]) / mem[_12240 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12240 + 32] and 10000 > -1 / mem[_12240 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12240 + 32] / 10000 != mem[_12240 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12240 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12240 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 64]) / (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12240 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12240 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12240 + 32]:
                                            if False and mem[_12240 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12240 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12240 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12240 + 64] and 10000 > -1 / mem[_12240 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 64] / 10000 != mem[_12240 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 64] < 10000 * mem[_12240 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12240 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12240 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12240 + 32]:
                                            if mem[_12240 + 64] and 10000 > -1 / mem[_12240 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12240 + 64] / 10000 != mem[_12240 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12240 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12240 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12240 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12240 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 32]) / mem[_12240 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12240 + 64] and 10000 > -1 / mem[_12240 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12240 + 64] / 10000 != mem[_12240 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12240 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12240 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12240 + 32]) / (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            mem[_8221 + _8301 + 36] = 0
                            staticcall address(_8199).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8221 + _8301 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8163):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12284] = return_data.size
                                mem[_12284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8137 + 12 len 20] == address(_8163):
                                    if mem[_12284 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12284 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12284 + 64]:
                                            if False and mem[_12284 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12284 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12284 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12284 + 32] and 10000 > -1 / mem[_12284 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12284 + 32] / 10000 != mem[_12284 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12284 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12284 + 32] < 10000 * mem[_12284 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12284 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12284 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12284 + 64]:
                                            if mem[_12284 + 32] and 10000 > -1 / mem[_12284 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12284 + 32] / 10000 != mem[_12284 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12284 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12284 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12284 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12284 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 64]) / mem[_12284 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12284 + 32] and 10000 > -1 / mem[_12284 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12284 + 32] / 10000 != mem[_12284 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12284 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12284 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 64]) / (10000 * mem[_12284 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12284 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12284 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8137 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8137 + 128] + 10000:
                                        if mem[_12284 + 32]:
                                            if False and mem[_12284 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12284 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12284 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12284 + 64] and 10000 > -1 / mem[_12284 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12284 + 64] / 10000 != mem[_12284 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12284 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12284 + 64] < 10000 * mem[_12284 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12284 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12284 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12284 + 32]:
                                            if mem[_12284 + 64] and 10000 > -1 / mem[_12284 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12284 + 64] / 10000 != mem[_12284 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12284 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12284 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12284 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12284 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 32]) / mem[_12284 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12284 + 64] and 10000 > -1 / mem[_12284 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12284 + 64] / 10000 != mem[_12284 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12284 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12284 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12284 + 32]) / (10000 * mem[_12284 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                        _8175 = mem[mem[(32 * idx) + 128]]
                        _8176 = mem[mem[(32 * idx) + 128] + 32]
                        if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                            _8215 = mem[mem[(32 * idx) + 128] + 64]
                            _8257 = mem[64]
                            _8258 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_8258 + 32] = mem[_8258 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _8313 = mem[_8258]
                            s = 0
                            while s < _8313:
                                mem[_8257 + s + 36] = mem[_8258 + s + 32]
                                _8132 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_8313) <= _8313:
                                staticcall address(_8215).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8257 + _8313 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8175):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    _12234 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12234] = return_data.size
                                    mem[_12234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8175):
                                        if mem[_12234 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12234 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12234 + 64]:
                                                if False and mem[_12234 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12234 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12234 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12234 + 32] and 10000 > -1 / mem[_12234 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 32] / 10000 != mem[_12234 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 32] < 10000 * mem[_12234 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12234 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12234 + 32]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12234 + 64]:
                                                if mem[_12234 + 32] and 10000 > -1 / mem[_12234 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12234 + 32] / 10000 != mem[_12234 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12234 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12234 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12234 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12234 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 64]) / mem[_12234 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12234 + 32] and 10000 > -1 / mem[_12234 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12234 + 32] / 10000 != mem[_12234 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12234 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12234 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 64]) / (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[_12234 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12234 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12234 + 32]:
                                                if False and mem[_12234 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12234 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12234 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12234 + 64] and 10000 > -1 / mem[_12234 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 64] / 10000 != mem[_12234 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 64] < 10000 * mem[_12234 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12234 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12234 + 64]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12234 + 32]:
                                                if mem[_12234 + 64] and 10000 > -1 / mem[_12234 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12234 + 64] / 10000 != mem[_12234 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12234 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12234 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12234 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12234 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 32]) / mem[_12234 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12234 + 64] and 10000 > -1 / mem[_12234 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12234 + 64] / 10000 != mem[_12234 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12234 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12234 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12234 + 32]) / (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                mem[_8257 + _8313 + 36] = 0
                                staticcall address(_8215).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8257 + _8313 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8175):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    _12269 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12269] = return_data.size
                                    mem[_12269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8175):
                                        if mem[_12269 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12269 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12269 + 64]:
                                                if False and mem[_12269 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12269 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12269 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12269 + 32] and 10000 > -1 / mem[_12269 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12269 + 32] / 10000 != mem[_12269 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12269 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12269 + 32] < 10000 * mem[_12269 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12269 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12269 + 32]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12269 + 64]:
                                                if mem[_12269 + 32] and 10000 > -1 / mem[_12269 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12269 + 32] / 10000 != mem[_12269 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12269 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12269 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12269 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12269 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 64]) / mem[_12269 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12269 + 32] and 10000 > -1 / mem[_12269 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12269 + 32] / 10000 != mem[_12269 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12269 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12269 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 64]) / (10000 * mem[_12269 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[_12269 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12269 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12269 + 32]:
                                                if False and mem[_12269 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12269 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12269 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12269 + 64] and 10000 > -1 / mem[_12269 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12269 + 64] / 10000 != mem[_12269 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12269 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12269 + 64] < 10000 * mem[_12269 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12269 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12269 + 64]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12269 + 32]:
                                                if mem[_12269 + 64] and 10000 > -1 / mem[_12269 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12269 + 64] / 10000 != mem[_12269 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12269 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12269 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12269 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12269 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 32]) / mem[_12269 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12269 + 64] and 10000 > -1 / mem[_12269 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12269 + 64] / 10000 != mem[_12269 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12269 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12269 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12269 + 32]) / (10000 * mem[_12269 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _8216 = mem[mem[(32 * idx) + 128] + 64]
                            _8261 = mem[64]
                            _8262 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_8262 + 32] = mem[_8262 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _8314 = mem[_8262]
                            s = 0
                            while s < _8314:
                                mem[_8261 + s + 36] = mem[_8262 + s + 32]
                                _8132 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_8314) <= _8314:
                                staticcall address(_8216).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8261 + _8314 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8176):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    _12236 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12236] = return_data.size
                                    mem[_12236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8176):
                                        if mem[_12236 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12236 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12236 + 64]:
                                                if False and mem[_12236 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12236 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12236 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12236 + 32] and 10000 > -1 / mem[_12236 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 32] / 10000 != mem[_12236 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 32] < 10000 * mem[_12236 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12236 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12236 + 32]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12236 + 64]:
                                                if mem[_12236 + 32] and 10000 > -1 / mem[_12236 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12236 + 32] / 10000 != mem[_12236 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12236 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12236 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12236 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12236 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 64]) / mem[_12236 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12236 + 32] and 10000 > -1 / mem[_12236 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12236 + 32] / 10000 != mem[_12236 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12236 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12236 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 64]) / (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[_12236 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12236 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12236 + 32]:
                                                if False and mem[_12236 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12236 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12236 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12236 + 64] and 10000 > -1 / mem[_12236 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 64] / 10000 != mem[_12236 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 64] < 10000 * mem[_12236 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12236 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12236 + 64]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12236 + 32]:
                                                if mem[_12236 + 64] and 10000 > -1 / mem[_12236 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12236 + 64] / 10000 != mem[_12236 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12236 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12236 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12236 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12236 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 32]) / mem[_12236 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12236 + 64] and 10000 > -1 / mem[_12236 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12236 + 64] / 10000 != mem[_12236 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12236 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12236 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12236 + 32]) / (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                mem[_8261 + _8314 + 36] = 0
                                staticcall address(_8216).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8261 + _8314 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8176):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    _12274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12274] = return_data.size
                                    mem[_12274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4069 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8137 + 12 len 20] == address(_8176):
                                        if mem[_12274 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12274 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12274 + 64]:
                                                if False and mem[_12274 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12274 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12274 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12274 + 32] and 10000 > -1 / mem[_12274 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12274 + 32] / 10000 != mem[_12274 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12274 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12274 + 32] < 10000 * mem[_12274 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12274 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12274 + 32]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12274 + 64]:
                                                if mem[_12274 + 32] and 10000 > -1 / mem[_12274 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12274 + 32] / 10000 != mem[_12274 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12274 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12274 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12274 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12274 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 64]) / mem[_12274 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12274 + 32] and 10000 > -1 / mem[_12274 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12274 + 32] / 10000 != mem[_12274 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12274 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12274 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 64]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 64]) / (10000 * mem[_12274 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if mem[_12274 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12274 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8137 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8137 + 128] + 10000:
                                            if mem[_12274 + 32]:
                                                if False and mem[_12274 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12274 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12274 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12274 + 64] and 10000 > -1 / mem[_12274 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12274 + 64] / 10000 != mem[_12274 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12274 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12274 + 64] < 10000 * mem[_12274 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12274 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12274 + 64]
                                        else:
                                            if mem[(32 * idx) + _4069 + 32] and -mem[_8137 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8137 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8137 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12274 + 32]:
                                                if mem[_12274 + 64] and 10000 > -1 / mem[_12274 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12274 + 64] / 10000 != mem[_12274 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12274 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12274 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12274 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12274 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 32]) / mem[_12274 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12274 + 64] and 10000 > -1 / mem[_12274 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12274 + 64] / 10000 != mem[_12274 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12274 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12274 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12274 + 32]) / (10000 * mem[_12274 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8137 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] == 5:
                            _8181 = mem[mem[(32 * idx) + 128] + 96]
                            _8189 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_8189 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_8189]:
                                revert with 'NH{q', 50
                            mem[_8189 + 32] = mem[_8137 + 12 len 20]
                            if 1 >= mem[_8189]:
                                revert with 'NH{q', 50
                            mem[_8189 + 64] = mem[_8137 + 44 len 20]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            _8298 = mem[(32 * idx) + _4069 + 32]
                            mem[_8189 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_8189 + 100] = _8298
                            mem[_8189 + 132] = 64
                            mem[_8189 + 164] = mem[_8189]
                            s = 0
                            t = _8189 + 32
                            u = _8189 + 196
                            while s < mem[_8189]:
                                mem[u] = mem[t + 12 len 20]
                                _8132 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_8181))
                            staticcall address(_8181).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8189 + (32 * mem[_8189]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12218 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12264 = mem[_12218]
                            require mem[_12218] <= test266151307()
                            require _12218 + mem[_12218] + 31 < _12218 + return_data.size
                            _12420 = mem[_12218 + mem[_12218]]
                            if mem[_12218 + mem[_12218]] > test266151307():
                                revert with 'NH{q', 65
                            if _12218 + ceil32(return_data.size) + floor32(mem[_12218 + mem[_12218]]) + 1 > test266151307() or floor32(mem[_12218 + mem[_12218]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _12218 + ceil32(return_data.size) + floor32(mem[_12218 + mem[_12218]]) + 1
                            mem[_12218 + ceil32(return_data.size)] = _12420
                            require _12264 + (32 * _12420) + 32 <= return_data.size
                            s = 0
                            t = _12218 + _12264 + 32
                            u = _12218 + ceil32(return_data.size) + 32
                            while s < _12420:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _8132 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _12420 < 1:
                                revert with 'NH{q', 17
                            if _12420 - 1 >= _12420:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_4069]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _4069 + 32] = mem[(32 * _12420 - 1) + _12218 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] != 8:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    if mem[mem[(32 * idx) + 128] + 160] != 13:
                                        require mem[mem[(32 * idx) + 128] + 160] == 14
                                        _8247 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        _8284 = mem[(32 * idx) + _4069 + 32]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 36] = address(_8247)
                                        mem[mem[64] + 68] = _8284
                                        require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                        staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4], address(_8247), _8284
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8978 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8978] == mem[_8978]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_8978]
                                    else:
                                        _8206 = mem[mem[(32 * idx) + 128]]
                                        _8207 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        _8249 = mem[(32 * idx) + _4069 + 32]
                                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 68] = address(_8207)
                                        mem[mem[64] + 100] = _8249
                                        require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                        staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                gas gas_remaining wei
                                               args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_8206), address(_8207), _8249
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_9248] == mem[_9248]
                                        require mem[_9248 + 32] == mem[_9248 + 32]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_9248]
                                else:
                                    _8209 = mem[64]
                                    mem[mem[64]] = 1
                                    mem[64] = mem[64] + 64
                                    mem[_8209 + 32] = call.data[calldata.size]
                                    if 0 >= mem[_8209]:
                                        revert with 'NH{q', 50
                                    mem[_8209 + 32] = mem[_8137 + 76 len 20]
                                    mem[_8209 + 64] = 2
                                    mem[64] = _8209 + 160
                                    mem[_8209 + 96 len 64] = call.data[calldata.size len 64]
                                    mem[_8209 + 96] = mem[_8137 + 12 len 20]
                                    mem[_8209 + 128] = mem[_8137 + 44 len 20]
                                    _8338 = mem[_8137 + 96]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    _8350 = mem[(32 * idx) + _4069 + 32]
                                    mem[_8209 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                                    mem[_8209 + 164] = _8350
                                    mem[_8209 + 196] = 96
                                    mem[_8209 + 260] = mem[_8209]
                                    s = 0
                                    t = _8209 + 32
                                    u = _8209 + 292
                                    while s < mem[_8209]:
                                        mem[u] = mem[t + 12 len 20]
                                        _8132 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_8209 + 228] = (32 * mem[_8209]) + 128
                                    mem[_8209 + (32 * mem[_8209]) + 292] = 2
                                    s = 0
                                    t = _8209 + 96
                                    u = _8209 + (32 * mem[_8209]) + 324
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _8132 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_8338))
                                    staticcall address(_8338).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8209 + (32 * mem[_8209]) + -mem[64] + 384]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _15816 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _15818 = mem[_15816]
                                    require mem[_15816] <= test266151307()
                                    require _15816 + mem[_15816] + 31 < _15816 + return_data.size
                                    _15820 = mem[_15816 + mem[_15816]]
                                    if mem[_15816 + mem[_15816]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _15816 + ceil32(return_data.size) + floor32(mem[_15816 + mem[_15816]]) + 1 > test266151307() or floor32(mem[_15816 + mem[_15816]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _15816 + ceil32(return_data.size) + floor32(mem[_15816 + mem[_15816]]) + 1
                                    mem[_15816 + ceil32(return_data.size)] = _15820
                                    require _15818 + (32 * _15820) + 32 <= return_data.size
                                    s = 0
                                    t = _15816 + _15818 + 32
                                    u = _15816 + ceil32(return_data.size) + 32
                                    while s < _15820:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        _8132 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    if _15820 < 1:
                                        revert with 'NH{q', 17
                                    if _15820 - 1 >= _15820:
                                        revert with 'NH{q', 50
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = mem[(32 * _15820 - 1) + _15816 + ceil32(return_data.size) + 32]
                            else:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                _8197 = mem[(32 * idx) + _4069 + 32]
                                _8212 = mem[mem[(32 * idx) + 128] + 32]
                                _8252 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                                _8254 = sha3(address(_8212), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                                if stor[_8252] == uint256(sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_8212)]):
                                    revert with 0, 'BAD CURVE'
                                _8296 = mem[mem[(32 * idx) + 128] + 96]
                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                            mem[mem[64] + 68] = _8197
                                            require ext_code.size(address(_8296))
                                            staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9130 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9130] == mem[_9130]
                                            if mem[_9130] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_9130] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                mem[mem[64] + 68] = _8197
                                                require ext_code.size(address(_8296))
                                                staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9201 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9201] == mem[_9201]
                                                if mem[_9201] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_9201] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                    mem[mem[64] + 68] = _8197
                                                    require ext_code.size(address(_8296))
                                                    staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9249 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9249] == mem[_9249]
                                                    if mem[_9249] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_9249] - 1
                                                else:
                                                    if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                    mem[mem[64] + 68] = _8197
                                                    require ext_code.size(address(_8296))
                                                    staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9277 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9277] == mem[_9277]
                                                    if mem[_9277] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_9277] - 1
                                    else:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                        mem[mem[64] + 68] = _8197
                                        require ext_code.size(address(_8296))
                                        staticcall address(_8296).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8926 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8926] == mem[_8926]
                                        if mem[_8137 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                            mem[mem[64] + 68] = _8197
                                            require ext_code.size(address(_8296))
                                            staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9695 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9695] == mem[_9695]
                                            if mem[_9695] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_9695] - 1
                                        else:
                                            if mem[_8137 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                mem[mem[64] + 68] = _8197
                                                require ext_code.size(address(_8296))
                                                staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9737 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9737] == mem[_9737]
                                                if mem[_9737] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_9737] - 1
                                            else:
                                                if mem[_8137 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                    mem[mem[64] + 68] = _8197
                                                    require ext_code.size(address(_8296))
                                                    staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9779 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9779] == mem[_9779]
                                                    if mem[_9779] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_9779] - 1
                                                else:
                                                    if mem[_8137 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if mem[_8926] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_8926] - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                        mem[mem[64] + 68] = _8197
                                                        require ext_code.size(address(_8296))
                                                        staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _9817 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_9817] == mem[_9817]
                                                        if mem[_9817] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_9817] - 1
                                else:
                                    mem[mem[64] + 4] = stor[_8252]
                                    mem[mem[64] + 36] = stor[_8254]
                                    mem[mem[64] + 68] = _8197
                                    require ext_code.size(address(_8296))
                                    staticcall address(_8296).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args stor[_8252], stor[_8254], _8197
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8835 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8835] == mem[_8835]
                                    if mem[_8835] and 9996 > -1 / mem[_8835]:
                                        revert with 'NH{q', 17
                                    if mem[_8137 + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                        if mem[_8137 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                            mem[mem[64] + 68] = _8197
                                            require ext_code.size(address(_8296))
                                            staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10194 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10194] == mem[_10194]
                                            if mem[_10194] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_10194] - 1
                                        else:
                                            if mem[_8137 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                mem[mem[64] + 68] = _8197
                                                require ext_code.size(address(_8296))
                                                staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10246 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10246] == mem[_10246]
                                                if mem[_10246] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_10246] - 1
                                            else:
                                                if mem[_8137 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                    mem[mem[64] + 68] = _8197
                                                    require ext_code.size(address(_8296))
                                                    staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _10315 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10315] == mem[_10315]
                                                    if mem[_10315] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_10315] - 1
                                                else:
                                                    if mem[_8137 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if 9996 * mem[_8835] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = (9996 * mem[_8835] / 10000) - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                        mem[mem[64] + 68] = _8197
                                                        require ext_code.size(address(_8296))
                                                        staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _10386 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10386] == mem[_10386]
                                                        if mem[_10386] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_10386] - 1
                                    else:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                        mem[mem[64] + 68] = _8197
                                        require ext_code.size(address(_8296))
                                        staticcall address(_8296).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10066] == mem[_10066]
                                        if mem[_8137 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                            mem[mem[64] + 68] = _8197
                                            require ext_code.size(address(_8296))
                                            staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11653 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11653] == mem[_11653]
                                            if mem[_11653] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_11653] - 1
                                        else:
                                            if mem[_8137 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                mem[mem[64] + 68] = _8197
                                                require ext_code.size(address(_8296))
                                                staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11699 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11699] == mem[_11699]
                                                if mem[_11699] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_11699] - 1
                                            else:
                                                if mem[_8137 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                    mem[mem[64] + 68] = _8197
                                                    require ext_code.size(address(_8296))
                                                    staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11721 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11721] == mem[_11721]
                                                    if mem[_11721] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_11721] - 1
                                                else:
                                                    if mem[_8137 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if mem[_10066] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_10066] - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8252')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8254')))
                                                        mem[mem[64] + 68] = _8197
                                                        require ext_code.size(address(_8296))
                                                        staticcall address(_8296).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8252'))), ('signextend', 15, ('stor', ('var', '_8254'))), _8197
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11743 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11743] == mem[_11743]
                                                        if mem[_11743] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4069]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_11743] - 1
            if idx == -1:
                revert with 'NH{q', 17
            _8132 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _8148 = mem[_4069]
        mem[mem[64] + 32] = mem[_4069]
        mem[mem[64] + 64 len 32 * _8148] = mem[_4069 + 32 len 32 * _8148]
        return 32, mem[mem[64] + 32 len (32 * _8148) + 32]
    mem[_4069 + 32 len 32 * _4067 + 1] = call.data[calldata.size len 32 * _4067 + 1]
    if 0 >= mem[_4069]:
        revert with 'NH{q', 50
    mem[_4069 + 32] = cd[4]
    _8133 = mem[96]
    idx = 0
    while idx < _8133:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _8140 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _8146 = mem[mem[(32 * idx) + 128]]
            _8147 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _8152 = mem[mem[(32 * idx) + 128] + 64]
                _8164 = mem[64]
                _8165 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_8165 + 32] = mem[_8165 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _8191 = mem[_8165]
                s = 0
                while s < _8191:
                    mem[_8164 + s + 36] = mem[_8165 + s + 32]
                    _8133 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_8191) <= _8191:
                    staticcall address(_8152).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8164 + _8191 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8146):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _12242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12242] = return_data.size
                        mem[_12242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8146):
                            if mem[_12242 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12242 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12242 + 64]:
                                    if False and mem[_12242 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12242 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12242 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12242 + 32] and 10000 > -1 / mem[_12242 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12242 + 32] / 10000 != mem[_12242 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12242 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12242 + 32] < 10000 * mem[_12242 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12242 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12242 + 32]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12242 + 64]:
                                    if mem[_12242 + 32] and 10000 > -1 / mem[_12242 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12242 + 32] / 10000 != mem[_12242 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12242 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12242 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12242 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12242 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 64]) / mem[_12242 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12242 + 32] and 10000 > -1 / mem[_12242 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12242 + 32] / 10000 != mem[_12242 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12242 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12242 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 64]) / (10000 * mem[_12242 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[_12242 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12242 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12242 + 32]:
                                    if False and mem[_12242 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12242 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12242 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12242 + 64] and 10000 > -1 / mem[_12242 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12242 + 64] / 10000 != mem[_12242 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12242 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12242 + 64] < 10000 * mem[_12242 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12242 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12242 + 64]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12242 + 32]:
                                    if mem[_12242 + 64] and 10000 > -1 / mem[_12242 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12242 + 64] / 10000 != mem[_12242 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12242 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12242 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12242 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12242 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 32]) / mem[_12242 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12242 + 64] and 10000 > -1 / mem[_12242 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12242 + 64] / 10000 != mem[_12242 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12242 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12242 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12242 + 32]) / (10000 * mem[_12242 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    mem[_8164 + _8191 + 36] = 0
                    staticcall address(_8152).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8164 + _8191 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8146):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _12289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12289] = return_data.size
                        mem[_12289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8146):
                            if mem[_12289 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12289 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12289 + 64]:
                                    if False and mem[_12289 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12289 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12289 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12289 + 32] and 10000 > -1 / mem[_12289 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12289 + 32] / 10000 != mem[_12289 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12289 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12289 + 32] < 10000 * mem[_12289 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12289 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12289 + 32]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12289 + 64]:
                                    if mem[_12289 + 32] and 10000 > -1 / mem[_12289 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12289 + 32] / 10000 != mem[_12289 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12289 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12289 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12289 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12289 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 64]) / mem[_12289 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12289 + 32] and 10000 > -1 / mem[_12289 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12289 + 32] / 10000 != mem[_12289 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12289 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12289 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 64]) / (10000 * mem[_12289 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[_12289 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12289 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12289 + 32]:
                                    if False and mem[_12289 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12289 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12289 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12289 + 64] and 10000 > -1 / mem[_12289 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12289 + 64] / 10000 != mem[_12289 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12289 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12289 + 64] < 10000 * mem[_12289 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12289 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12289 + 64]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12289 + 32]:
                                    if mem[_12289 + 64] and 10000 > -1 / mem[_12289 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12289 + 64] / 10000 != mem[_12289 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12289 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12289 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12289 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12289 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 32]) / mem[_12289 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12289 + 64] and 10000 > -1 / mem[_12289 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12289 + 64] / 10000 != mem[_12289 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12289 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12289 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12289 + 32]) / (10000 * mem[_12289 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
            else:
                _8153 = mem[mem[(32 * idx) + 128] + 64]
                _8168 = mem[64]
                _8169 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_8169 + 32] = mem[_8169 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _8192 = mem[_8169]
                s = 0
                while s < _8192:
                    mem[_8168 + s + 36] = mem[_8169 + s + 32]
                    _8133 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_8192) <= _8192:
                    staticcall address(_8153).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8168 + _8192 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8147):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _12244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12244] = return_data.size
                        mem[_12244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8147):
                            if mem[_12244 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12244 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12244 + 64]:
                                    if False and mem[_12244 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12244 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12244 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12244 + 32] and 10000 > -1 / mem[_12244 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12244 + 32] / 10000 != mem[_12244 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12244 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12244 + 32] < 10000 * mem[_12244 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12244 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12244 + 32]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12244 + 64]:
                                    if mem[_12244 + 32] and 10000 > -1 / mem[_12244 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12244 + 32] / 10000 != mem[_12244 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12244 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12244 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12244 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12244 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 64]) / mem[_12244 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12244 + 32] and 10000 > -1 / mem[_12244 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12244 + 32] / 10000 != mem[_12244 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12244 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12244 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 64]) / (10000 * mem[_12244 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[_12244 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12244 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12244 + 32]:
                                    if False and mem[_12244 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12244 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12244 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12244 + 64] and 10000 > -1 / mem[_12244 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12244 + 64] / 10000 != mem[_12244 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12244 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12244 + 64] < 10000 * mem[_12244 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12244 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12244 + 64]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12244 + 32]:
                                    if mem[_12244 + 64] and 10000 > -1 / mem[_12244 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12244 + 64] / 10000 != mem[_12244 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12244 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12244 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12244 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12244 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 32]) / mem[_12244 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12244 + 64] and 10000 > -1 / mem[_12244 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12244 + 64] / 10000 != mem[_12244 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12244 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12244 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12244 + 32]) / (10000 * mem[_12244 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    mem[_8168 + _8192 + 36] = 0
                    staticcall address(_8153).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8168 + _8192 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8147):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
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
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _12294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12294] = return_data.size
                        mem[_12294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4069 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8140 + 12 len 20] == address(_8147):
                            if mem[_12294 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12294 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12294 + 64]:
                                    if False and mem[_12294 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12294 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12294 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12294 + 32] and 10000 > -1 / mem[_12294 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12294 + 32] / 10000 != mem[_12294 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12294 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12294 + 32] < 10000 * mem[_12294 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12294 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12294 + 32]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12294 + 64]:
                                    if mem[_12294 + 32] and 10000 > -1 / mem[_12294 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12294 + 32] / 10000 != mem[_12294 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12294 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12294 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12294 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12294 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 64]) / mem[_12294 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12294 + 32] and 10000 > -1 / mem[_12294 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12294 + 32] / 10000 != mem[_12294 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12294 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12294 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 64]) / (10000 * mem[_12294 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            if mem[_12294 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12294 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8140 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8140 + 128] + 10000:
                                if mem[_12294 + 32]:
                                    if False and mem[_12294 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12294 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12294 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12294 + 64] and 10000 > -1 / mem[_12294 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12294 + 64] / 10000 != mem[_12294 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12294 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12294 + 64] < 10000 * mem[_12294 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12294 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12294 + 64]
                            else:
                                if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12294 + 32]:
                                    if mem[_12294 + 64] and 10000 > -1 / mem[_12294 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12294 + 64] / 10000 != mem[_12294 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12294 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12294 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12294 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12294 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 32]) / mem[_12294 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12294 + 64] and 10000 > -1 / mem[_12294 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12294 + 64] / 10000 != mem[_12294 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12294 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12294 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12294 + 32]) / (10000 * mem[_12294 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
        else:
            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                _8172 = mem[mem[(32 * idx) + 128]]
                _8173 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _8202 = mem[mem[(32 * idx) + 128] + 64]
                    _8238 = mem[64]
                    _8239 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8239 + 32] = mem[_8239 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8306 = mem[_8239]
                    s = 0
                    while s < _8306:
                        mem[_8238 + s + 36] = mem[_8239 + s + 32]
                        _8133 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8306) <= _8306:
                        staticcall address(_8202).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8238 + _8306 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8172):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12250 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12250] = return_data.size
                            mem[_12250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8172):
                                if mem[_12250 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12250 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12250 + 64]:
                                        if False and mem[_12250 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12250 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12250 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12250 + 32] and 10000 > -1 / mem[_12250 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12250 + 32] / 10000 != mem[_12250 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12250 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12250 + 32] < 10000 * mem[_12250 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12250 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12250 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12250 + 64]:
                                        if mem[_12250 + 32] and 10000 > -1 / mem[_12250 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12250 + 32] / 10000 != mem[_12250 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12250 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12250 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12250 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12250 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 64]) / mem[_12250 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12250 + 32] and 10000 > -1 / mem[_12250 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12250 + 32] / 10000 != mem[_12250 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12250 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12250 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 64]) / (10000 * mem[_12250 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12250 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12250 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12250 + 32]:
                                        if False and mem[_12250 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12250 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12250 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12250 + 64] and 10000 > -1 / mem[_12250 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12250 + 64] / 10000 != mem[_12250 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12250 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12250 + 64] < 10000 * mem[_12250 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12250 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12250 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12250 + 32]:
                                        if mem[_12250 + 64] and 10000 > -1 / mem[_12250 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12250 + 64] / 10000 != mem[_12250 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12250 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12250 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12250 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12250 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 32]) / mem[_12250 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12250 + 64] and 10000 > -1 / mem[_12250 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12250 + 64] / 10000 != mem[_12250 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12250 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12250 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12250 + 32]) / (10000 * mem[_12250 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        mem[_8238 + _8306 + 36] = 0
                        staticcall address(_8202).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8238 + _8306 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8172):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12310] = return_data.size
                            mem[_12310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8172):
                                if mem[_12310 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12310 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12310 + 64]:
                                        if False and mem[_12310 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12310 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12310 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12310 + 32] and 10000 > -1 / mem[_12310 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12310 + 32] / 10000 != mem[_12310 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12310 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12310 + 32] < 10000 * mem[_12310 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12310 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12310 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12310 + 64]:
                                        if mem[_12310 + 32] and 10000 > -1 / mem[_12310 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12310 + 32] / 10000 != mem[_12310 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12310 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12310 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12310 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12310 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 64]) / mem[_12310 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12310 + 32] and 10000 > -1 / mem[_12310 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12310 + 32] / 10000 != mem[_12310 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12310 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12310 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 64]) / (10000 * mem[_12310 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12310 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12310 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12310 + 32]:
                                        if False and mem[_12310 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12310 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12310 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12310 + 64] and 10000 > -1 / mem[_12310 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12310 + 64] / 10000 != mem[_12310 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12310 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12310 + 64] < 10000 * mem[_12310 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12310 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12310 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12310 + 32]:
                                        if mem[_12310 + 64] and 10000 > -1 / mem[_12310 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12310 + 64] / 10000 != mem[_12310 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12310 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12310 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12310 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12310 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 32]) / mem[_12310 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12310 + 64] and 10000 > -1 / mem[_12310 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12310 + 64] / 10000 != mem[_12310 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12310 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12310 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12310 + 32]) / (10000 * mem[_12310 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    _8203 = mem[mem[(32 * idx) + 128] + 64]
                    _8242 = mem[64]
                    _8243 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8243 + 32] = mem[_8243 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8307 = mem[_8243]
                    s = 0
                    while s < _8307:
                        mem[_8242 + s + 36] = mem[_8243 + s + 32]
                        _8133 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8307) <= _8307:
                        staticcall address(_8203).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8242 + _8307 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8173):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12252] = return_data.size
                            mem[_12252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8173):
                                if mem[_12252 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12252 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12252 + 64]:
                                        if False and mem[_12252 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12252 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12252 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12252 + 32] and 10000 > -1 / mem[_12252 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12252 + 32] / 10000 != mem[_12252 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12252 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12252 + 32] < 10000 * mem[_12252 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12252 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12252 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12252 + 64]:
                                        if mem[_12252 + 32] and 10000 > -1 / mem[_12252 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12252 + 32] / 10000 != mem[_12252 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12252 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12252 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12252 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12252 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 64]) / mem[_12252 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12252 + 32] and 10000 > -1 / mem[_12252 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12252 + 32] / 10000 != mem[_12252 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12252 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12252 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 64]) / (10000 * mem[_12252 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12252 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12252 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12252 + 32]:
                                        if False and mem[_12252 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12252 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12252 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12252 + 64] and 10000 > -1 / mem[_12252 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12252 + 64] / 10000 != mem[_12252 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12252 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12252 + 64] < 10000 * mem[_12252 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12252 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12252 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12252 + 32]:
                                        if mem[_12252 + 64] and 10000 > -1 / mem[_12252 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12252 + 64] / 10000 != mem[_12252 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12252 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12252 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12252 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12252 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 32]) / mem[_12252 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12252 + 64] and 10000 > -1 / mem[_12252 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12252 + 64] / 10000 != mem[_12252 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12252 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12252 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12252 + 32]) / (10000 * mem[_12252 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        mem[_8242 + _8307 + 36] = 0
                        staticcall address(_8203).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8242 + _8307 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8173):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            _12315 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12315] = return_data.size
                            mem[_12315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4069 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8140 + 12 len 20] == address(_8173):
                                if mem[_12315 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12315 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12315 + 64]:
                                        if False and mem[_12315 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12315 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12315 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12315 + 32] and 10000 > -1 / mem[_12315 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12315 + 32] / 10000 != mem[_12315 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12315 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12315 + 32] < 10000 * mem[_12315 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12315 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12315 + 32]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12315 + 64]:
                                        if mem[_12315 + 32] and 10000 > -1 / mem[_12315 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12315 + 32] / 10000 != mem[_12315 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12315 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12315 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12315 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12315 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 64]) / mem[_12315 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12315 + 32] and 10000 > -1 / mem[_12315 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12315 + 32] / 10000 != mem[_12315 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12315 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12315 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 64]) / (10000 * mem[_12315 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                if mem[_12315 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12315 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8140 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8140 + 128] + 10000:
                                    if mem[_12315 + 32]:
                                        if False and mem[_12315 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12315 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12315 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12315 + 64] and 10000 > -1 / mem[_12315 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12315 + 64] / 10000 != mem[_12315 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12315 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12315 + 64] < 10000 * mem[_12315 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12315 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12315 + 64]
                                else:
                                    if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12315 + 32]:
                                        if mem[_12315 + 64] and 10000 > -1 / mem[_12315 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12315 + 64] / 10000 != mem[_12315 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12315 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12315 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12315 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12315 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 32]) / mem[_12315 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12315 + 64] and 10000 > -1 / mem[_12315 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12315 + 64] / 10000 != mem[_12315 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12315 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12315 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12315 + 32]) / (10000 * mem[_12315 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                    _8178 = mem[mem[(32 * idx) + 128]]
                    _8179 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _8236 = mem[mem[(32 * idx) + 128] + 64]
                        _8276 = mem[64]
                        _8277 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8277 + 32] = mem[_8277 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8320 = mem[_8277]
                        s = 0
                        while s < _8320:
                            mem[_8276 + s + 36] = mem[_8277 + s + 32]
                            _8133 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8320) <= _8320:
                            staticcall address(_8236).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8276 + _8320 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8178):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12246 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12246] = return_data.size
                                mem[_12246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8178):
                                    if mem[_12246 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12246 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12246 + 64]:
                                            if False and mem[_12246 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12246 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12246 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12246 + 32] and 10000 > -1 / mem[_12246 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 32] / 10000 != mem[_12246 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 32] < 10000 * mem[_12246 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12246 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12246 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12246 + 64]:
                                            if mem[_12246 + 32] and 10000 > -1 / mem[_12246 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12246 + 32] / 10000 != mem[_12246 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12246 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12246 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12246 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12246 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 64]) / mem[_12246 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12246 + 32] and 10000 > -1 / mem[_12246 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12246 + 32] / 10000 != mem[_12246 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12246 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12246 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 64]) / (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12246 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12246 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12246 + 32]:
                                            if False and mem[_12246 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12246 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12246 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12246 + 64] and 10000 > -1 / mem[_12246 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 64] / 10000 != mem[_12246 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 64] < 10000 * mem[_12246 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12246 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12246 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12246 + 32]:
                                            if mem[_12246 + 64] and 10000 > -1 / mem[_12246 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12246 + 64] / 10000 != mem[_12246 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12246 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12246 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12246 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12246 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 32]) / mem[_12246 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12246 + 64] and 10000 > -1 / mem[_12246 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12246 + 64] / 10000 != mem[_12246 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12246 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12246 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12246 + 32]) / (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            mem[_8276 + _8320 + 36] = 0
                            staticcall address(_8236).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8276 + _8320 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8178):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12300 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12300] = return_data.size
                                mem[_12300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8178):
                                    if mem[_12300 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12300 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12300 + 64]:
                                            if False and mem[_12300 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12300 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12300 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12300 + 32] and 10000 > -1 / mem[_12300 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12300 + 32] / 10000 != mem[_12300 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12300 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12300 + 32] < 10000 * mem[_12300 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12300 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12300 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12300 + 64]:
                                            if mem[_12300 + 32] and 10000 > -1 / mem[_12300 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12300 + 32] / 10000 != mem[_12300 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12300 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12300 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12300 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12300 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 64]) / mem[_12300 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12300 + 32] and 10000 > -1 / mem[_12300 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12300 + 32] / 10000 != mem[_12300 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12300 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12300 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 64]) / (10000 * mem[_12300 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12300 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12300 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12300 + 32]:
                                            if False and mem[_12300 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12300 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12300 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12300 + 64] and 10000 > -1 / mem[_12300 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12300 + 64] / 10000 != mem[_12300 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12300 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12300 + 64] < 10000 * mem[_12300 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12300 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12300 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12300 + 32]:
                                            if mem[_12300 + 64] and 10000 > -1 / mem[_12300 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12300 + 64] / 10000 != mem[_12300 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12300 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12300 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12300 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12300 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 32]) / mem[_12300 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12300 + 64] and 10000 > -1 / mem[_12300 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12300 + 64] / 10000 != mem[_12300 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12300 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12300 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12300 + 32]) / (10000 * mem[_12300 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                    else:
                        _8237 = mem[mem[(32 * idx) + 128] + 64]
                        _8280 = mem[64]
                        _8281 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8281 + 32] = mem[_8281 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8321 = mem[_8281]
                        s = 0
                        while s < _8321:
                            mem[_8280 + s + 36] = mem[_8281 + s + 32]
                            _8133 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8321) <= _8321:
                            staticcall address(_8237).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8280 + _8321 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8179):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12248 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12248] = return_data.size
                                mem[_12248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8179):
                                    if mem[_12248 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12248 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12248 + 64]:
                                            if False and mem[_12248 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12248 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12248 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12248 + 32] and 10000 > -1 / mem[_12248 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12248 + 32] / 10000 != mem[_12248 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12248 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12248 + 32] < 10000 * mem[_12248 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12248 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12248 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12248 + 64]:
                                            if mem[_12248 + 32] and 10000 > -1 / mem[_12248 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12248 + 32] / 10000 != mem[_12248 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12248 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12248 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12248 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12248 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 64]) / mem[_12248 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12248 + 32] and 10000 > -1 / mem[_12248 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12248 + 32] / 10000 != mem[_12248 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12248 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12248 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 64]) / (10000 * mem[_12248 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12248 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12248 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12248 + 32]:
                                            if False and mem[_12248 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12248 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12248 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12248 + 64] and 10000 > -1 / mem[_12248 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12248 + 64] / 10000 != mem[_12248 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12248 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12248 + 64] < 10000 * mem[_12248 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12248 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12248 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12248 + 32]:
                                            if mem[_12248 + 64] and 10000 > -1 / mem[_12248 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12248 + 64] / 10000 != mem[_12248 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12248 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12248 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12248 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12248 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 32]) / mem[_12248 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12248 + 64] and 10000 > -1 / mem[_12248 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12248 + 64] / 10000 != mem[_12248 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12248 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12248 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12248 + 32]) / (10000 * mem[_12248 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                        else:
                            mem[_8280 + _8321 + 36] = 0
                            staticcall address(_8237).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8280 + _8321 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8179):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[160]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[128]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                            else:
                                _12305 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12305] = return_data.size
                                mem[_12305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4069 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8140 + 12 len 20] == address(_8179):
                                    if mem[_12305 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12305 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12305 + 64]:
                                            if False and mem[_12305 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12305 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12305 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12305 + 32] and 10000 > -1 / mem[_12305 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12305 + 32] / 10000 != mem[_12305 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12305 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12305 + 32] < 10000 * mem[_12305 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12305 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12305 + 32]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12305 + 64]:
                                            if mem[_12305 + 32] and 10000 > -1 / mem[_12305 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12305 + 32] / 10000 != mem[_12305 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12305 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12305 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12305 + 64] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12305 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 64]) / mem[_12305 + 64] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12305 + 32] and 10000 > -1 / mem[_12305 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12305 + 32] / 10000 != mem[_12305 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12305 + 32] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12305 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 64]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 64]) / (10000 * mem[_12305 + 32]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                else:
                                    if mem[_12305 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12305 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8140 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8140 + 128] + 10000:
                                        if mem[_12305 + 32]:
                                            if False and mem[_12305 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12305 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12305 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12305 + 64] and 10000 > -1 / mem[_12305 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12305 + 64] / 10000 != mem[_12305 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12305 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12305 + 64] < 10000 * mem[_12305 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12305 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = 0 / 10000 * mem[_12305 + 64]
                                    else:
                                        if mem[(32 * idx) + _4069 + 32] and -mem[_8140 + 128] + 10000 > -1 / mem[(32 * idx) + _4069 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8140 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) / -mem[_8140 + 128] + 10000 != mem[(32 * idx) + _4069 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12305 + 32]:
                                            if mem[_12305 + 64] and 10000 > -1 / mem[_12305 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12305 + 64] / 10000 != mem[_12305 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12305 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12305 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = 0 / (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) and mem[_12305 + 32] > -1 / (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12305 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 32]) / mem[_12305 + 32] != (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12305 + 64] and 10000 > -1 / mem[_12305 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12305 + 64] / 10000 != mem[_12305 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12305 + 64] > (-10000 * mem[(32 * idx) + _4069 + 32]) + (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]) < 10000 * mem[_12305 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = (10000 * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32] * mem[_12305 + 32]) / (10000 * mem[_12305 + 64]) + (10000 * mem[(32 * idx) + _4069 + 32]) - (mem[_8140 + 128] * mem[(32 * idx) + _4069 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 160] == 5:
                        _8183 = mem[mem[(32 * idx) + 128] + 96]
                        _8195 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_8195 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_8195]:
                            revert with 'NH{q', 50
                        mem[_8195 + 32] = mem[_8140 + 12 len 20]
                        if 1 >= mem[_8195]:
                            revert with 'NH{q', 50
                        mem[_8195 + 64] = mem[_8140 + 44 len 20]
                        if idx >= mem[_4069]:
                            revert with 'NH{q', 50
                        _8304 = mem[(32 * idx) + _4069 + 32]
                        mem[_8195 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_8195 + 100] = _8304
                        mem[_8195 + 132] = 64
                        mem[_8195 + 164] = mem[_8195]
                        s = 0
                        t = _8195 + 32
                        u = _8195 + 196
                        while s < mem[_8195]:
                            mem[u] = mem[t + 12 len 20]
                            _8133 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_8183))
                        staticcall address(_8183).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8195 + (32 * mem[_8195]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12225 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12295 = mem[_12225]
                        require mem[_12225] <= test266151307()
                        require _12225 + mem[_12225] + 31 < _12225 + return_data.size
                        _12445 = mem[_12225 + mem[_12225]]
                        if mem[_12225 + mem[_12225]] > test266151307():
                            revert with 'NH{q', 65
                        if _12225 + ceil32(return_data.size) + floor32(mem[_12225 + mem[_12225]]) + 1 > test266151307() or floor32(mem[_12225 + mem[_12225]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12225 + ceil32(return_data.size) + floor32(mem[_12225 + mem[_12225]]) + 1
                        mem[_12225 + ceil32(return_data.size)] = _12445
                        require _12295 + (32 * _12445) + 32 <= return_data.size
                        s = 0
                        t = _12225 + _12295 + 32
                        u = _12225 + ceil32(return_data.size) + 32
                        while s < _12445:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _8133 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _12445 < 1:
                            revert with 'NH{q', 17
                        if _12445 - 1 >= _12445:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_4069]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _4069 + 32] = mem[(32 * _12445 - 1) + _12225 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] != 8:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                if mem[mem[(32 * idx) + 128] + 160] != 13:
                                    require mem[mem[(32 * idx) + 128] + 160] == 14
                                    _8266 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    _8290 = mem[(32 * idx) + _4069 + 32]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 36] = address(_8266)
                                    mem[mem[64] + 68] = _8290
                                    require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                    staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], address(_8266), _8290
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8995 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8995] == mem[_8995]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_8995]
                                else:
                                    _8227 = mem[mem[(32 * idx) + 128]]
                                    _8228 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    _8268 = mem[(32 * idx) + _4069 + 32]
                                    mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 68] = address(_8228)
                                    mem[mem[64] + 100] = _8268
                                    require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                    staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                            gas gas_remaining wei
                                           args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_8227), address(_8228), _8268
                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    require mem[_9266] == mem[_9266]
                                    require mem[_9266 + 32] == mem[_9266 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4069]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_9266]
                            else:
                                _8230 = mem[64]
                                mem[mem[64]] = 1
                                mem[64] = mem[64] + 64
                                mem[_8230 + 32] = call.data[calldata.size]
                                if 0 >= mem[_8230]:
                                    revert with 'NH{q', 50
                                mem[_8230 + 32] = mem[_8140 + 76 len 20]
                                mem[_8230 + 64] = 2
                                mem[64] = _8230 + 160
                                mem[_8230 + 96 len 64] = call.data[calldata.size len 64]
                                mem[_8230 + 96] = mem[_8140 + 12 len 20]
                                mem[_8230 + 128] = mem[_8140 + 44 len 20]
                                _8343 = mem[_8140 + 96]
                                if idx >= mem[_4069]:
                                    revert with 'NH{q', 50
                                _8359 = mem[(32 * idx) + _4069 + 32]
                                mem[_8230 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                                mem[_8230 + 164] = _8359
                                mem[_8230 + 196] = 96
                                mem[_8230 + 260] = mem[_8230]
                                s = 0
                                t = _8230 + 32
                                u = _8230 + 292
                                while s < mem[_8230]:
                                    mem[u] = mem[t + 12 len 20]
                                    _8133 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_8230 + 228] = (32 * mem[_8230]) + 128
                                mem[_8230 + (32 * mem[_8230]) + 292] = 2
                                s = 0
                                t = _8230 + 96
                                u = _8230 + (32 * mem[_8230]) + 324
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _8133 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(_8343))
                                staticcall address(_8343).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8230 + (32 * mem[_8230]) + -mem[64] + 384]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15817 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _15819 = mem[_15817]
                                require mem[_15817] <= test266151307()
                                require _15817 + mem[_15817] + 31 < _15817 + return_data.size
                                _15821 = mem[_15817 + mem[_15817]]
                                if mem[_15817 + mem[_15817]] > test266151307():
                                    revert with 'NH{q', 65
                                if _15817 + ceil32(return_data.size) + floor32(mem[_15817 + mem[_15817]]) + 1 > test266151307() or floor32(mem[_15817 + mem[_15817]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _15817 + ceil32(return_data.size) + floor32(mem[_15817 + mem[_15817]]) + 1
                                mem[_15817 + ceil32(return_data.size)] = _15821
                                require _15819 + (32 * _15821) + 32 <= return_data.size
                                s = 0
                                t = _15817 + _15819 + 32
                                u = _15817 + ceil32(return_data.size) + 32
                                while s < _15821:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _8133 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if _15821 < 1:
                                    revert with 'NH{q', 17
                                if _15821 - 1 >= _15821:
                                    revert with 'NH{q', 50
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4069]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4069 + 32] = mem[(32 * _15821 - 1) + _15817 + ceil32(return_data.size) + 32]
                        else:
                            if idx >= mem[_4069]:
                                revert with 'NH{q', 50
                            _8201 = mem[(32 * idx) + _4069 + 32]
                            _8233 = mem[mem[(32 * idx) + 128] + 32]
                            _8271 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                            _8273 = sha3(address(_8233), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                            if stor[_8271] == uint256(sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_8233)]):
                                revert with 0, 'BAD CURVE'
                            _8302 = mem[mem[(32 * idx) + 128] + 96]
                            if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                        mem[mem[64] + 68] = _8201
                                        require ext_code.size(address(_8302))
                                        staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9166 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9166] == mem[_9166]
                                        if mem[_9166] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_9166] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                            mem[mem[64] + 68] = _8201
                                            require ext_code.size(address(_8302))
                                            staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9221 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9221] == mem[_9221]
                                            if mem[_9221] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_9221] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                mem[mem[64] + 68] = _8201
                                                require ext_code.size(address(_8302))
                                                staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9267 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9267] == mem[_9267]
                                                if mem[_9267] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_9267] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                mem[mem[64] + 68] = _8201
                                                require ext_code.size(address(_8302))
                                                staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9287 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9287] == mem[_9287]
                                                if mem[_9287] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_9287] - 1
                                else:
                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                    mem[mem[64] + 68] = _8201
                                    require ext_code.size(address(_8302))
                                    staticcall address(_8302).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8952 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8952] == mem[_8952]
                                    if mem[_8140 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                        mem[mem[64] + 68] = _8201
                                        require ext_code.size(address(_8302))
                                        staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9716 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9716] == mem[_9716]
                                        if mem[_9716] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_9716] - 1
                                    else:
                                        if mem[_8140 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                            mem[mem[64] + 68] = _8201
                                            require ext_code.size(address(_8302))
                                            staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9766 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9766] == mem[_9766]
                                            if mem[_9766] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_9766] - 1
                                        else:
                                            if mem[_8140 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                mem[mem[64] + 68] = _8201
                                                require ext_code.size(address(_8302))
                                                staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9798 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9798] == mem[_9798]
                                                if mem[_9798] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_9798] - 1
                                            else:
                                                if mem[_8140 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if mem[_8952] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_8952] - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                    mem[mem[64] + 68] = _8201
                                                    require ext_code.size(address(_8302))
                                                    staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9827 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9827] == mem[_9827]
                                                    if mem[_9827] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_9827] - 1
                            else:
                                mem[mem[64] + 4] = stor[_8271]
                                mem[mem[64] + 36] = stor[_8273]
                                mem[mem[64] + 68] = _8201
                                require ext_code.size(address(_8302))
                                staticcall address(_8302).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args stor[_8271], stor[_8273], _8201
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8885 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8885] == mem[_8885]
                                if mem[_8885] and 9996 > -1 / mem[_8885]:
                                    revert with 'NH{q', 17
                                if mem[_8140 + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                    if mem[_8140 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                        mem[mem[64] + 68] = _8201
                                        require ext_code.size(address(_8302))
                                        staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10212 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10212] == mem[_10212]
                                        if mem[_10212] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_10212] - 1
                                    else:
                                        if mem[_8140 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                            mem[mem[64] + 68] = _8201
                                            require ext_code.size(address(_8302))
                                            staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10280 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10280] == mem[_10280]
                                            if mem[_10280] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_10280] - 1
                                        else:
                                            if mem[_8140 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                mem[mem[64] + 68] = _8201
                                                require ext_code.size(address(_8302))
                                                staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10358 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10358] == mem[_10358]
                                                if mem[_10358] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_10358] - 1
                                            else:
                                                if mem[_8140 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if 9996 * mem[_8885] / 10000 < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = (9996 * mem[_8885] / 10000) - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                    mem[mem[64] + 68] = _8201
                                                    require ext_code.size(address(_8302))
                                                    staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _10413 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10413] == mem[_10413]
                                                    if mem[_10413] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_10413] - 1
                                else:
                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                    mem[mem[64] + 68] = _8201
                                    require ext_code.size(address(_8302))
                                    staticcall address(_8302).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10091 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10091] == mem[_10091]
                                    if mem[_8140 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                        mem[mem[64] + 68] = _8201
                                        require ext_code.size(address(_8302))
                                        staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11680 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11680] == mem[_11680]
                                        if mem[_11680] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4069]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4069 + 32] = mem[_11680] - 1
                                    else:
                                        if mem[_8140 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                            mem[mem[64] + 68] = _8201
                                            require ext_code.size(address(_8302))
                                            staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11718 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11718] == mem[_11718]
                                            if mem[_11718] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4069]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4069 + 32] = mem[_11718] - 1
                                        else:
                                            if mem[_8140 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                mem[mem[64] + 68] = _8201
                                                require ext_code.size(address(_8302))
                                                staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11732 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11732] == mem[_11732]
                                                if mem[_11732] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4069]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4069 + 32] = mem[_11732] - 1
                                            else:
                                                if mem[_8140 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if mem[_10091] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_10091] - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8271')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8273')))
                                                    mem[mem[64] + 68] = _8201
                                                    require ext_code.size(address(_8302))
                                                    staticcall address(_8302).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8271'))), ('signextend', 15, ('stor', ('var', '_8273'))), _8201
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11761 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11761] == mem[_11761]
                                                    if mem[_11761] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4069]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4069 + 32] = mem[_11761] - 1
        if idx == -1:
            revert with 'NH{q', 17
        _8133 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _8149 = mem[_4069]
    mem[mem[64] + 32] = mem[_4069]
    mem[mem[64] + 64 len 32 * _8149] = mem[_4069 + 32 len 32 * _8149]
    return 32, mem[mem[64] + 32 len (32 * _8149) + 32]
}



}
