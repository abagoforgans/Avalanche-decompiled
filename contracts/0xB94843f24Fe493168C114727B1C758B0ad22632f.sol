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
        _4064 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_4064] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_4064 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_4064 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_4064 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_4064 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_4064 + 160] = cd[(s + 160)]
        mem[t] = _4064
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    _4063 = mem[96]
    if mem[96] > -2:
        revert with 'NH{q', 17
    if mem[96] + 1 > test266151307():
        revert with 'NH{q', 65
    _4065 = mem[64]
    mem[mem[64]] = mem[96] + 1
    mem[64] = mem[64] + (32 * _4063 + 1) + 32
    if not _4063 + 1:
        if 0 >= mem[_4065]:
            revert with 'NH{q', 50
        mem[_4065 + 32] = cd[4]
        _8124 = mem[96]
        idx = 0
        while idx < _8124:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _8129 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 160] == 1:
                _8136 = mem[mem[(32 * idx) + 128]]
                _8137 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _8142 = mem[mem[(32 * idx) + 128] + 64]
                    _8146 = mem[64]
                    _8147 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8147 + 32] = mem[_8147 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8177 = mem[_8147]
                    s = 0
                    while s < _8177:
                        mem[_8146 + s + 36] = mem[_8147 + s + 32]
                        _8124 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8177) <= _8177:
                        staticcall address(_8142).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8146 + _8177 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8136):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12218] = return_data.size
                            mem[_12218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8136):
                                if mem[_12218 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12218 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12218 + 64]:
                                        if False and mem[_12218 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12218 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12218 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12218 + 32] and 10000 > -1 / mem[_12218 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12218 + 32] / 10000 != mem[_12218 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12218 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12218 + 32] < 10000 * mem[_12218 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12218 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12218 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12218 + 64]:
                                        if mem[_12218 + 32] and 10000 > -1 / mem[_12218 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12218 + 32] / 10000 != mem[_12218 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12218 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12218 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12218 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12218 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 64]) / mem[_12218 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12218 + 32] and 10000 > -1 / mem[_12218 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12218 + 32] / 10000 != mem[_12218 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12218 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12218 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 64]) / (10000 * mem[_12218 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12218 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12218 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12218 + 32]:
                                        if False and mem[_12218 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12218 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12218 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12218 + 64] and 10000 > -1 / mem[_12218 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12218 + 64] / 10000 != mem[_12218 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12218 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12218 + 64] < 10000 * mem[_12218 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12218 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12218 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12218 + 32]:
                                        if mem[_12218 + 64] and 10000 > -1 / mem[_12218 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12218 + 64] / 10000 != mem[_12218 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12218 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12218 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12218 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12218 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 32]) / mem[_12218 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12218 + 64] and 10000 > -1 / mem[_12218 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12218 + 64] / 10000 != mem[_12218 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12218 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12218 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12218 + 32]) / (10000 * mem[_12218 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        mem[_8146 + _8177 + 36] = 0
                        staticcall address(_8142).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8146 + _8177 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8136):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12246 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12246] = return_data.size
                            mem[_12246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8136):
                                if mem[_12246 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12246 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12246 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12246 + 64]:
                                        if mem[_12246 + 32] and 10000 > -1 / mem[_12246 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 32] / 10000 != mem[_12246 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12246 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12246 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12246 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 64]) / mem[_12246 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12246 + 32] and 10000 > -1 / mem[_12246 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 32] / 10000 != mem[_12246 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12246 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 64]) / (10000 * mem[_12246 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12246 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12246 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12246 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12246 + 32]:
                                        if mem[_12246 + 64] and 10000 > -1 / mem[_12246 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 64] / 10000 != mem[_12246 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12246 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12246 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12246 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 32]) / mem[_12246 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12246 + 64] and 10000 > -1 / mem[_12246 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12246 + 64] / 10000 != mem[_12246 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12246 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12246 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12246 + 32]) / (10000 * mem[_12246 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    _8143 = mem[mem[(32 * idx) + 128] + 64]
                    _8150 = mem[64]
                    _8151 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8151 + 32] = mem[_8151 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8178 = mem[_8151]
                    s = 0
                    while s < _8178:
                        mem[_8150 + s + 36] = mem[_8151 + s + 32]
                        _8124 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8178) <= _8178:
                        staticcall address(_8143).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8150 + _8178 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8137):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12220] = return_data.size
                            mem[_12220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8137):
                                if mem[_12220 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12220 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12220 + 64]:
                                        if False and mem[_12220 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12220 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12220 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12220 + 32] and 10000 > -1 / mem[_12220 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12220 + 32] / 10000 != mem[_12220 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12220 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12220 + 32] < 10000 * mem[_12220 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12220 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12220 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12220 + 64]:
                                        if mem[_12220 + 32] and 10000 > -1 / mem[_12220 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12220 + 32] / 10000 != mem[_12220 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12220 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12220 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12220 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12220 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 64]) / mem[_12220 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12220 + 32] and 10000 > -1 / mem[_12220 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12220 + 32] / 10000 != mem[_12220 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12220 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12220 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 64]) / (10000 * mem[_12220 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12220 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12220 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12220 + 32]:
                                        if False and mem[_12220 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12220 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12220 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12220 + 64] and 10000 > -1 / mem[_12220 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12220 + 64] / 10000 != mem[_12220 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12220 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12220 + 64] < 10000 * mem[_12220 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12220 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12220 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12220 + 32]:
                                        if mem[_12220 + 64] and 10000 > -1 / mem[_12220 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12220 + 64] / 10000 != mem[_12220 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12220 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12220 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12220 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12220 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 32]) / mem[_12220 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12220 + 64] and 10000 > -1 / mem[_12220 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12220 + 64] / 10000 != mem[_12220 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12220 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12220 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12220 + 32]) / (10000 * mem[_12220 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        mem[_8150 + _8178 + 36] = 0
                        staticcall address(_8143).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8150 + _8178 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8137):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12251] = return_data.size
                            mem[_12251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8129 + 12 len 20] == address(_8137):
                                if mem[_12251 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12251 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12251 + 64]:
                                        if False and mem[_12251 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12251 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12251 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12251 + 32] and 10000 > -1 / mem[_12251 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12251 + 32] / 10000 != mem[_12251 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12251 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12251 + 32] < 10000 * mem[_12251 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12251 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12251 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12251 + 64]:
                                        if mem[_12251 + 32] and 10000 > -1 / mem[_12251 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12251 + 32] / 10000 != mem[_12251 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12251 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12251 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12251 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12251 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 64]) / mem[_12251 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12251 + 32] and 10000 > -1 / mem[_12251 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12251 + 32] / 10000 != mem[_12251 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12251 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12251 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 64]) / (10000 * mem[_12251 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12251 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12251 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8129 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8129 + 128] + 10000:
                                    if mem[_12251 + 32]:
                                        if False and mem[_12251 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12251 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12251 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12251 + 64] and 10000 > -1 / mem[_12251 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12251 + 64] / 10000 != mem[_12251 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12251 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12251 + 64] < 10000 * mem[_12251 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12251 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12251 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12251 + 32]:
                                        if mem[_12251 + 64] and 10000 > -1 / mem[_12251 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12251 + 64] / 10000 != mem[_12251 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12251 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12251 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12251 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12251 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 32]) / mem[_12251 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12251 + 64] and 10000 > -1 / mem[_12251 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12251 + 64] / 10000 != mem[_12251 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12251 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12251 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12251 + 32]) / (10000 * mem[_12251 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                    _8154 = mem[mem[(32 * idx) + 128]]
                    _8155 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _8190 = mem[mem[(32 * idx) + 128] + 64]
                        _8209 = mem[64]
                        _8210 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8210 + 32] = mem[_8210 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8292 = mem[_8210]
                        s = 0
                        while s < _8292:
                            mem[_8209 + s + 36] = mem[_8210 + s + 32]
                            _8124 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8292) <= _8292:
                            staticcall address(_8190).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8209 + _8292 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8154):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12226 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12226] = return_data.size
                                mem[_12226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8154):
                                    if mem[_12226 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12226 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12226 + 64]:
                                            if False and mem[_12226 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12226 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12226 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12226 + 32] and 10000 > -1 / mem[_12226 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12226 + 32] / 10000 != mem[_12226 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12226 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12226 + 32] < 10000 * mem[_12226 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12226 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12226 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12226 + 64]:
                                            if mem[_12226 + 32] and 10000 > -1 / mem[_12226 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12226 + 32] / 10000 != mem[_12226 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12226 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12226 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12226 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12226 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 64]) / mem[_12226 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12226 + 32] and 10000 > -1 / mem[_12226 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12226 + 32] / 10000 != mem[_12226 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12226 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12226 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 64]) / (10000 * mem[_12226 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12226 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12226 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12226 + 32]:
                                            if False and mem[_12226 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12226 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12226 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12226 + 64] and 10000 > -1 / mem[_12226 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12226 + 64] / 10000 != mem[_12226 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12226 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12226 + 64] < 10000 * mem[_12226 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12226 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12226 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12226 + 32]:
                                            if mem[_12226 + 64] and 10000 > -1 / mem[_12226 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12226 + 64] / 10000 != mem[_12226 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12226 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12226 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12226 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12226 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 32]) / mem[_12226 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12226 + 64] and 10000 > -1 / mem[_12226 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12226 + 64] / 10000 != mem[_12226 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12226 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12226 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12226 + 32]) / (10000 * mem[_12226 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            mem[_8209 + _8292 + 36] = 0
                            staticcall address(_8190).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8209 + _8292 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8154):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12267 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12267] = return_data.size
                                mem[_12267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8154):
                                    if mem[_12267 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12267 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12267 + 64]:
                                            if False and mem[_12267 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12267 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12267 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12267 + 32] and 10000 > -1 / mem[_12267 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12267 + 32] / 10000 != mem[_12267 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12267 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12267 + 32] < 10000 * mem[_12267 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12267 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12267 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12267 + 64]:
                                            if mem[_12267 + 32] and 10000 > -1 / mem[_12267 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12267 + 32] / 10000 != mem[_12267 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12267 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12267 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12267 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12267 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 64]) / mem[_12267 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12267 + 32] and 10000 > -1 / mem[_12267 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12267 + 32] / 10000 != mem[_12267 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12267 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12267 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 64]) / (10000 * mem[_12267 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12267 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12267 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12267 + 32]:
                                            if False and mem[_12267 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12267 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12267 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12267 + 64] and 10000 > -1 / mem[_12267 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12267 + 64] / 10000 != mem[_12267 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12267 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12267 + 64] < 10000 * mem[_12267 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12267 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12267 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12267 + 32]:
                                            if mem[_12267 + 64] and 10000 > -1 / mem[_12267 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12267 + 64] / 10000 != mem[_12267 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12267 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12267 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12267 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12267 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 32]) / mem[_12267 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12267 + 64] and 10000 > -1 / mem[_12267 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12267 + 64] / 10000 != mem[_12267 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12267 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12267 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12267 + 32]) / (10000 * mem[_12267 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _8191 = mem[mem[(32 * idx) + 128] + 64]
                        _8213 = mem[64]
                        _8214 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8214 + 32] = mem[_8214 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8293 = mem[_8214]
                        s = 0
                        while s < _8293:
                            mem[_8213 + s + 36] = mem[_8214 + s + 32]
                            _8124 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8293) <= _8293:
                            staticcall address(_8191).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8213 + _8293 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8155):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12228 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12228] = return_data.size
                                mem[_12228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8155):
                                    if mem[_12228 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12228 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12228 + 64]:
                                            if False and mem[_12228 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12228 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12228 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12228 + 32] and 10000 > -1 / mem[_12228 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12228 + 32] / 10000 != mem[_12228 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12228 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12228 + 32] < 10000 * mem[_12228 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12228 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12228 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12228 + 64]:
                                            if mem[_12228 + 32] and 10000 > -1 / mem[_12228 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12228 + 32] / 10000 != mem[_12228 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12228 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12228 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12228 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12228 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 64]) / mem[_12228 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12228 + 32] and 10000 > -1 / mem[_12228 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12228 + 32] / 10000 != mem[_12228 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12228 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12228 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 64]) / (10000 * mem[_12228 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12228 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12228 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12228 + 32]:
                                            if False and mem[_12228 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12228 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12228 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12228 + 64] and 10000 > -1 / mem[_12228 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12228 + 64] / 10000 != mem[_12228 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12228 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12228 + 64] < 10000 * mem[_12228 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12228 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12228 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12228 + 32]:
                                            if mem[_12228 + 64] and 10000 > -1 / mem[_12228 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12228 + 64] / 10000 != mem[_12228 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12228 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12228 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12228 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12228 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 32]) / mem[_12228 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12228 + 64] and 10000 > -1 / mem[_12228 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12228 + 64] / 10000 != mem[_12228 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12228 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12228 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12228 + 32]) / (10000 * mem[_12228 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            mem[_8213 + _8293 + 36] = 0
                            staticcall address(_8191).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8213 + _8293 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8155):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12272] = return_data.size
                                mem[_12272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8129 + 12 len 20] == address(_8155):
                                    if mem[_12272 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12272 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12272 + 64]:
                                            if False and mem[_12272 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12272 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12272 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12272 + 32] and 10000 > -1 / mem[_12272 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12272 + 32] / 10000 != mem[_12272 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12272 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12272 + 32] < 10000 * mem[_12272 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12272 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12272 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12272 + 64]:
                                            if mem[_12272 + 32] and 10000 > -1 / mem[_12272 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12272 + 32] / 10000 != mem[_12272 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12272 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12272 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12272 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12272 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 64]) / mem[_12272 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12272 + 32] and 10000 > -1 / mem[_12272 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12272 + 32] / 10000 != mem[_12272 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12272 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12272 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 64]) / (10000 * mem[_12272 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12272 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12272 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8129 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8129 + 128] + 10000:
                                        if mem[_12272 + 32]:
                                            if False and mem[_12272 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12272 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12272 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12272 + 64] and 10000 > -1 / mem[_12272 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12272 + 64] / 10000 != mem[_12272 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12272 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12272 + 64] < 10000 * mem[_12272 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12272 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12272 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12272 + 32]:
                                            if mem[_12272 + 64] and 10000 > -1 / mem[_12272 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12272 + 64] / 10000 != mem[_12272 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12272 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12272 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12272 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12272 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 32]) / mem[_12272 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12272 + 64] and 10000 > -1 / mem[_12272 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12272 + 64] / 10000 != mem[_12272 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12272 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12272 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12272 + 32]) / (10000 * mem[_12272 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                        _8167 = mem[mem[(32 * idx) + 128]]
                        _8168 = mem[mem[(32 * idx) + 128] + 32]
                        if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                            _8207 = mem[mem[(32 * idx) + 128] + 64]
                            _8249 = mem[64]
                            _8250 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_8250 + 32] = mem[_8250 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _8305 = mem[_8250]
                            s = 0
                            while s < _8305:
                                mem[_8249 + s + 36] = mem[_8250 + s + 32]
                                _8124 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_8305) <= _8305:
                                staticcall address(_8207).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8249 + _8305 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8167):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    _12222 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12222] = return_data.size
                                    mem[_12222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8167):
                                        if mem[_12222 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12222 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12222 + 64]:
                                                if False and mem[_12222 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12222 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12222 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12222 + 32] and 10000 > -1 / mem[_12222 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12222 + 32] / 10000 != mem[_12222 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12222 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12222 + 32] < 10000 * mem[_12222 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12222 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12222 + 32]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12222 + 64]:
                                                if mem[_12222 + 32] and 10000 > -1 / mem[_12222 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12222 + 32] / 10000 != mem[_12222 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12222 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12222 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12222 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12222 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 64]) / mem[_12222 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12222 + 32] and 10000 > -1 / mem[_12222 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12222 + 32] / 10000 != mem[_12222 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12222 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12222 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 64]) / (10000 * mem[_12222 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[_12222 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12222 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12222 + 32]:
                                                if False and mem[_12222 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12222 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12222 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12222 + 64] and 10000 > -1 / mem[_12222 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12222 + 64] / 10000 != mem[_12222 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12222 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12222 + 64] < 10000 * mem[_12222 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12222 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12222 + 64]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12222 + 32]:
                                                if mem[_12222 + 64] and 10000 > -1 / mem[_12222 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12222 + 64] / 10000 != mem[_12222 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12222 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12222 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12222 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12222 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 32]) / mem[_12222 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12222 + 64] and 10000 > -1 / mem[_12222 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12222 + 64] / 10000 != mem[_12222 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12222 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12222 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12222 + 32]) / (10000 * mem[_12222 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                mem[_8249 + _8305 + 36] = 0
                                staticcall address(_8207).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8249 + _8305 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8167):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    _12257 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12257] = return_data.size
                                    mem[_12257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8167):
                                        if mem[_12257 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12257 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12257 + 64]:
                                                if False and mem[_12257 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12257 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12257 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12257 + 32] and 10000 > -1 / mem[_12257 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12257 + 32] / 10000 != mem[_12257 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12257 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12257 + 32] < 10000 * mem[_12257 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12257 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12257 + 32]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12257 + 64]:
                                                if mem[_12257 + 32] and 10000 > -1 / mem[_12257 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12257 + 32] / 10000 != mem[_12257 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12257 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12257 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12257 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12257 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 64]) / mem[_12257 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12257 + 32] and 10000 > -1 / mem[_12257 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12257 + 32] / 10000 != mem[_12257 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12257 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12257 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 64]) / (10000 * mem[_12257 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[_12257 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12257 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12257 + 32]:
                                                if False and mem[_12257 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12257 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12257 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12257 + 64] and 10000 > -1 / mem[_12257 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12257 + 64] / 10000 != mem[_12257 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12257 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12257 + 64] < 10000 * mem[_12257 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12257 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12257 + 64]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12257 + 32]:
                                                if mem[_12257 + 64] and 10000 > -1 / mem[_12257 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12257 + 64] / 10000 != mem[_12257 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12257 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12257 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12257 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12257 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 32]) / mem[_12257 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12257 + 64] and 10000 > -1 / mem[_12257 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12257 + 64] / 10000 != mem[_12257 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12257 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12257 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12257 + 32]) / (10000 * mem[_12257 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _8208 = mem[mem[(32 * idx) + 128] + 64]
                            _8253 = mem[64]
                            _8254 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_8254 + 32] = mem[_8254 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                            _8306 = mem[_8254]
                            s = 0
                            while s < _8306:
                                mem[_8253 + s + 36] = mem[_8254 + s + 32]
                                _8124 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_8306) <= _8306:
                                staticcall address(_8208).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8253 + _8306 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8168):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    _12224 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12224] = return_data.size
                                    mem[_12224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8168):
                                        if mem[_12224 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12224 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12224 + 64]:
                                                if False and mem[_12224 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12224 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12224 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12224 + 32] and 10000 > -1 / mem[_12224 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12224 + 32] / 10000 != mem[_12224 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12224 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12224 + 32] < 10000 * mem[_12224 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12224 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12224 + 32]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12224 + 64]:
                                                if mem[_12224 + 32] and 10000 > -1 / mem[_12224 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12224 + 32] / 10000 != mem[_12224 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12224 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12224 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12224 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12224 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 64]) / mem[_12224 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12224 + 32] and 10000 > -1 / mem[_12224 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12224 + 32] / 10000 != mem[_12224 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12224 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12224 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 64]) / (10000 * mem[_12224 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[_12224 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12224 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12224 + 32]:
                                                if False and mem[_12224 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12224 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12224 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12224 + 64] and 10000 > -1 / mem[_12224 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12224 + 64] / 10000 != mem[_12224 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12224 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12224 + 64] < 10000 * mem[_12224 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12224 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12224 + 64]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12224 + 32]:
                                                if mem[_12224 + 64] and 10000 > -1 / mem[_12224 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12224 + 64] / 10000 != mem[_12224 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12224 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12224 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12224 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12224 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 32]) / mem[_12224 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12224 + 64] and 10000 > -1 / mem[_12224 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12224 + 64] / 10000 != mem[_12224 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12224 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12224 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12224 + 32]) / (10000 * mem[_12224 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                mem[_8253 + _8306 + 36] = 0
                                staticcall address(_8208).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8253 + _8306 + -mem[64] + 32]
                                if not return_data.size:
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8168):
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[160]:
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[160]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[128] and 10000 > -1 / mem[128]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[128] / 10000 != mem[128]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[160] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[128] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
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
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[128]:
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[128]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[160] and 10000 > -1 / mem[160]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[160] / 10000 != mem[160]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    _12262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_12262] = return_data.size
                                    mem[_12262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _4065 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                    if mem[_8129 + 12 len 20] == address(_8168):
                                        if mem[_12262 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12262 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12262 + 64]:
                                                if False and mem[_12262 + 64] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12262 + 64]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12262 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12262 + 32] and 10000 > -1 / mem[_12262 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12262 + 32] / 10000 != mem[_12262 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12262 + 32] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12262 + 32] < 10000 * mem[_12262 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12262 + 32]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12262 + 32]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12262 + 64]:
                                                if mem[_12262 + 32] and 10000 > -1 / mem[_12262 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12262 + 32] / 10000 != mem[_12262 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12262 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12262 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12262 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12262 + 64]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 64]) / mem[_12262 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12262 + 32] and 10000 > -1 / mem[_12262 + 32]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12262 + 32] / 10000 != mem[_12262 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12262 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12262 + 32]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 64]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 64]) / (10000 * mem[_12262 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if mem[_12262 + 64] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if mem[_12262 + 32] <= 0:
                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                        if 10000 < mem[_8129 + 128]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8129 + 128] + 10000:
                                            if mem[_12262 + 32]:
                                                if False and mem[_12262 + 32] > 0:
                                                    revert with 'NH{q', 17
                                                if not mem[_12262 + 32]:
                                                    revert with 'NH{q', 18
                                                if 0 / mem[_12262 + 32]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12262 + 64] and 10000 > -1 / mem[_12262 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12262 + 64] / 10000 != mem[_12262 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12262 + 64] > -1:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12262 + 64] < 10000 * mem[_12262 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not 10000 * mem[_12262 + 64]:
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12262 + 64]
                                        else:
                                            if mem[(32 * idx) + _4065 + 32] and -mem[_8129 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                                revert with 'NH{q', 17
                                            if not -mem[_8129 + 128] + 10000:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8129 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if not mem[_12262 + 32]:
                                                if mem[_12262 + 64] and 10000 > -1 / mem[_12262 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12262 + 64] / 10000 != mem[_12262 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12262 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12262 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                                            else:
                                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12262 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 17
                                                if not mem[_12262 + 32]:
                                                    revert with 'NH{q', 18
                                                if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 32]) / mem[_12262 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if mem[_12262 + 64] and 10000 > -1 / mem[_12262 + 64]:
                                                    revert with 'NH{q', 17
                                                if 10000 * mem[_12262 + 64] / 10000 != mem[_12262 + 64]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if 10000 * mem[_12262 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                    revert with 'NH{q', 17
                                                if (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12262 + 64]:
                                                    revert with 0, 'ds-math-add-overflow'
                                                if not (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                    revert with 'NH{q', 18
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12262 + 32]) / (10000 * mem[_12262 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8129 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] == 5:
                            _8173 = mem[mem[(32 * idx) + 128] + 96]
                            _8181 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_8181 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_8181]:
                                revert with 'NH{q', 50
                            mem[_8181 + 32] = mem[_8129 + 12 len 20]
                            if 1 >= mem[_8181]:
                                revert with 'NH{q', 50
                            mem[_8181 + 64] = mem[_8129 + 44 len 20]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            _8290 = mem[(32 * idx) + _4065 + 32]
                            mem[_8181 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_8181 + 100] = _8290
                            mem[_8181 + 132] = 64
                            mem[_8181 + 164] = mem[_8181]
                            s = 0
                            t = _8181 + 32
                            u = _8181 + 196
                            while s < mem[_8181]:
                                mem[u] = mem[t + 12 len 20]
                                _8124 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(address(_8173))
                            staticcall address(_8173).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8181 + (32 * mem[_8181]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12206 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _12252 = mem[_12206]
                            require mem[_12206] <= test266151307()
                            require _12206 + mem[_12206] + 31 < _12206 + return_data.size
                            _12408 = mem[_12206 + mem[_12206]]
                            if mem[_12206 + mem[_12206]] > test266151307():
                                revert with 'NH{q', 65
                            if _12206 + ceil32(return_data.size) + floor32(mem[_12206 + mem[_12206]]) + 1 > test266151307() or floor32(mem[_12206 + mem[_12206]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _12206 + ceil32(return_data.size) + floor32(mem[_12206 + mem[_12206]]) + 1
                            mem[_12206 + ceil32(return_data.size)] = _12408
                            require _12252 + (32 * _12408) + 32 <= return_data.size
                            s = 0
                            t = _12206 + _12252 + 32
                            u = _12206 + ceil32(return_data.size) + 32
                            while s < _12408:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                _8124 = mem[96]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            if _12408 < 1:
                                revert with 'NH{q', 17
                            if _12408 - 1 >= _12408:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_4065]:
                                revert with 'NH{q', 50
                            mem[(32 * idx + 1) + _4065 + 32] = mem[(32 * _12408 - 1) + _12206 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + 128] + 160] != 8:
                                if mem[mem[(32 * idx) + 128] + 160] != 12:
                                    if mem[mem[(32 * idx) + 128] + 160] != 13:
                                        require mem[mem[(32 * idx) + 128] + 160] == 14
                                        _8239 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        _8276 = mem[(32 * idx) + _4065 + 32]
                                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 36] = address(_8239)
                                        mem[mem[64] + 68] = _8276
                                        require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                        staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4], address(_8239), _8276
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8966 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8966] == mem[_8966]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_8966]
                                    else:
                                        _8198 = mem[mem[(32 * idx) + 128]]
                                        _8199 = mem[mem[(32 * idx) + 128] + 32]
                                        if idx >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        _8241 = mem[(32 * idx) + _4065 + 32]
                                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                        mem[mem[64] + 68] = address(_8199)
                                        mem[mem[64] + 100] = _8241
                                        require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                        staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                                gas gas_remaining wei
                                               args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_8198), address(_8199), _8241
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9236 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_9236] == mem[_9236]
                                        require mem[_9236 + 32] == mem[_9236 + 32]
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_9236]
                                else:
                                    _8201 = mem[64]
                                    mem[mem[64]] = 1
                                    mem[64] = mem[64] + 64
                                    mem[_8201 + 32] = call.data[calldata.size]
                                    if 0 >= mem[_8201]:
                                        revert with 'NH{q', 50
                                    mem[_8201 + 32] = mem[_8129 + 76 len 20]
                                    mem[_8201 + 64] = 2
                                    mem[64] = _8201 + 160
                                    mem[_8201 + 96 len 64] = call.data[calldata.size len 64]
                                    mem[_8201 + 96] = mem[_8129 + 12 len 20]
                                    mem[_8201 + 128] = mem[_8129 + 44 len 20]
                                    _8330 = mem[_8129 + 96]
                                    mem[_8201 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                                    mem[_8201 + 164] = cd[4]
                                    mem[_8201 + 196] = 96
                                    mem[_8201 + 260] = mem[_8201]
                                    s = 0
                                    t = _8201 + 32
                                    u = _8201 + 292
                                    while s < mem[_8201]:
                                        mem[u] = mem[t + 12 len 20]
                                        _8124 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_8201 + 228] = (32 * mem[_8201]) + 128
                                    mem[_8201 + (32 * mem[_8201]) + 292] = 2
                                    s = 0
                                    t = _8201 + 96
                                    u = _8201 + (32 * mem[_8201]) + 324
                                    while s < 2:
                                        mem[u] = mem[t + 12 len 20]
                                        _8124 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    require ext_code.size(address(_8330))
                                    staticcall address(_8330).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _8201 + (32 * mem[_8201]) + -mem[64] + 384]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _15804 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _15806 = mem[_15804]
                                    require mem[_15804] <= test266151307()
                                    require _15804 + mem[_15804] + 31 < _15804 + return_data.size
                                    _15808 = mem[_15804 + mem[_15804]]
                                    if mem[_15804 + mem[_15804]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _15804 + ceil32(return_data.size) + floor32(mem[_15804 + mem[_15804]]) + 1 > test266151307() or floor32(mem[_15804 + mem[_15804]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _15804 + ceil32(return_data.size) + floor32(mem[_15804 + mem[_15804]]) + 1
                                    mem[_15804 + ceil32(return_data.size)] = _15808
                                    require _15806 + (32 * _15808) + 32 <= return_data.size
                                    s = 0
                                    t = _15804 + _15806 + 32
                                    u = _15804 + ceil32(return_data.size) + 32
                                    while s < _15808:
                                        require mem[t] == mem[t]
                                        mem[u] = mem[t]
                                        _8124 = mem[96]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    if _15808 < 1:
                                        revert with 'NH{q', 17
                                    if _15808 - 1 >= _15808:
                                        revert with 'NH{q', 50
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = mem[(32 * _15808 - 1) + _15804 + ceil32(return_data.size) + 32]
                            else:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                _8189 = mem[(32 * idx) + _4065 + 32]
                                _8204 = mem[mem[(32 * idx) + 128] + 32]
                                _8244 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                                mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                                mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                                _8246 = sha3(address(_8204), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                                if stor[_8244] == uint256(sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_8204)]):
                                    revert with 0, 'BAD CURVE'
                                _8288 = mem[mem[(32 * idx) + 128] + 96]
                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                            mem[mem[64] + 68] = _8189
                                            require ext_code.size(address(_8288))
                                            staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9119 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9119] == mem[_9119]
                                            if mem[_9119] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_9119] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                mem[mem[64] + 68] = _8189
                                                require ext_code.size(address(_8288))
                                                staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9190 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9190] == mem[_9190]
                                                if mem[_9190] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_9190] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                    mem[mem[64] + 68] = _8189
                                                    require ext_code.size(address(_8288))
                                                    staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9237 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9237] == mem[_9237]
                                                    if mem[_9237] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_9237] - 1
                                                else:
                                                    if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                    mem[mem[64] + 68] = _8189
                                                    require ext_code.size(address(_8288))
                                                    staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9265 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9265] == mem[_9265]
                                                    if mem[_9265] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_9265] - 1
                                    else:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                        mem[mem[64] + 68] = _8189
                                        require ext_code.size(address(_8288))
                                        staticcall address(_8288).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8914 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_8914] == mem[_8914]
                                        if mem[_8129 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                            mem[mem[64] + 68] = _8189
                                            require ext_code.size(address(_8288))
                                            staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9683 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9683] == mem[_9683]
                                            if mem[_9683] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_9683] - 1
                                        else:
                                            if mem[_8129 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                mem[mem[64] + 68] = _8189
                                                require ext_code.size(address(_8288))
                                                staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9725 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9725] == mem[_9725]
                                                if mem[_9725] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_9725] - 1
                                            else:
                                                if mem[_8129 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                    mem[mem[64] + 68] = _8189
                                                    require ext_code.size(address(_8288))
                                                    staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9767 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9767] == mem[_9767]
                                                    if mem[_9767] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_9767] - 1
                                                else:
                                                    if mem[_8129 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if mem[_8914] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_8914] - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                        mem[mem[64] + 68] = _8189
                                                        require ext_code.size(address(_8288))
                                                        staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _9805 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_9805] == mem[_9805]
                                                        if mem[_9805] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_9805] - 1
                                else:
                                    mem[mem[64] + 4] = stor[_8244]
                                    mem[mem[64] + 36] = stor[_8246]
                                    mem[mem[64] + 68] = _8189
                                    require ext_code.size(address(_8288))
                                    staticcall address(_8288).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args stor[_8244], stor[_8246], _8189
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8823 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8823] == mem[_8823]
                                    if mem[_8823] and 9996 > -1 / mem[_8823]:
                                        revert with 'NH{q', 17
                                    if mem[_8129 + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                        if mem[_8129 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                            mem[mem[64] + 68] = _8189
                                            require ext_code.size(address(_8288))
                                            staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10182 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10182] == mem[_10182]
                                            if mem[_10182] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_10182] - 1
                                        else:
                                            if mem[_8129 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                mem[mem[64] + 68] = _8189
                                                require ext_code.size(address(_8288))
                                                staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10235 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10235] == mem[_10235]
                                                if mem[_10235] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_10235] - 1
                                            else:
                                                if mem[_8129 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                    mem[mem[64] + 68] = _8189
                                                    require ext_code.size(address(_8288))
                                                    staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _10305 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10305] == mem[_10305]
                                                    if mem[_10305] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_10305] - 1
                                                else:
                                                    if mem[_8129 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if 9996 * mem[_8823] / 10000 < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = (9996 * mem[_8823] / 10000) - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                        mem[mem[64] + 68] = _8189
                                                        require ext_code.size(address(_8288))
                                                        staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _10375 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_10375] == mem[_10375]
                                                        if mem[_10375] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_10375] - 1
                                    else:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                        mem[mem[64] + 68] = _8189
                                        require ext_code.size(address(_8288))
                                        staticcall address(_8288).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10054 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10054] == mem[_10054]
                                        if mem[_8129 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                            mem[mem[64] + 68] = _8189
                                            require ext_code.size(address(_8288))
                                            staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11641 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11641] == mem[_11641]
                                            if mem[_11641] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_11641] - 1
                                        else:
                                            if mem[_8129 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                mem[mem[64] + 68] = _8189
                                                require ext_code.size(address(_8288))
                                                staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11687 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11687] == mem[_11687]
                                                if mem[_11687] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_11687] - 1
                                            else:
                                                if mem[_8129 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                    mem[mem[64] + 68] = _8189
                                                    require ext_code.size(address(_8288))
                                                    staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11709 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11709] == mem[_11709]
                                                    if mem[_11709] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_11709] - 1
                                                else:
                                                    if mem[_8129 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                        if mem[_10054] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_10054] - 1
                                                    else:
                                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8244')))
                                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8246')))
                                                        mem[mem[64] + 68] = _8189
                                                        require ext_code.size(address(_8288))
                                                        staticcall address(_8288).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                                gas gas_remaining wei
                                                               args ('signextend', 15, ('stor', ('var', '_8244'))), ('signextend', 15, ('stor', ('var', '_8246'))), _8189
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11731 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11731] == mem[_11731]
                                                        if mem[_11731] < 1:
                                                            revert with 'NH{q', 17
                                                        if idx > -2:
                                                            revert with 'NH{q', 17
                                                        if idx + 1 >= mem[_4065]:
                                                            revert with 'NH{q', 50
                                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_11731] - 1
            if idx == -1:
                revert with 'NH{q', 17
            _8124 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _8140 = mem[_4065]
        mem[mem[64] + 32] = mem[_4065]
        mem[mem[64] + 64 len 32 * _8140] = mem[_4065 + 32 len 32 * _8140]
        return 32, mem[mem[64] + 32 len (32 * _8140) + 32]
    mem[_4065 + 32 len 32 * _4063 + 1] = call.data[calldata.size len 32 * _4063 + 1]
    if 0 >= mem[_4065]:
        revert with 'NH{q', 50
    mem[_4065 + 32] = cd[4]
    _8125 = mem[96]
    idx = 0
    while idx < _8125:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _8132 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 160] == 1:
            _8138 = mem[mem[(32 * idx) + 128]]
            _8139 = mem[mem[(32 * idx) + 128] + 32]
            if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                _8144 = mem[mem[(32 * idx) + 128] + 64]
                _8156 = mem[64]
                _8157 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_8157 + 32] = mem[_8157 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _8183 = mem[_8157]
                s = 0
                while s < _8183:
                    mem[_8156 + s + 36] = mem[_8157 + s + 32]
                    _8125 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_8183) <= _8183:
                    staticcall address(_8144).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8156 + _8183 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8138):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _12230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12230] = return_data.size
                        mem[_12230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8138):
                            if mem[_12230 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12230 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12230 + 32]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12230 + 64]:
                                    if mem[_12230 + 32] and 10000 > -1 / mem[_12230 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 32] / 10000 != mem[_12230 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12230 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12230 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12230 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 64]) / mem[_12230 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12230 + 32] and 10000 > -1 / mem[_12230 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 32] / 10000 != mem[_12230 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12230 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 64]) / (10000 * mem[_12230 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[_12230 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12230 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12230 + 64]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12230 + 32]:
                                    if mem[_12230 + 64] and 10000 > -1 / mem[_12230 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 64] / 10000 != mem[_12230 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12230 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12230 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12230 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 32]) / mem[_12230 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12230 + 64] and 10000 > -1 / mem[_12230 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12230 + 64] / 10000 != mem[_12230 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12230 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12230 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12230 + 32]) / (10000 * mem[_12230 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    mem[_8156 + _8183 + 36] = 0
                    staticcall address(_8144).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8156 + _8183 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8138):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _12277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12277] = return_data.size
                        mem[_12277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8138):
                            if mem[_12277 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12277 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
                                if mem[_12277 + 64]:
                                    if False and mem[_12277 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12277 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12277 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12277 + 32] and 10000 > -1 / mem[_12277 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12277 + 32] / 10000 != mem[_12277 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12277 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12277 + 32] < 10000 * mem[_12277 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12277 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12277 + 32]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12277 + 64]:
                                    if mem[_12277 + 32] and 10000 > -1 / mem[_12277 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12277 + 32] / 10000 != mem[_12277 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12277 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12277 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12277 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12277 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 64]) / mem[_12277 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12277 + 32] and 10000 > -1 / mem[_12277 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12277 + 32] / 10000 != mem[_12277 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12277 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12277 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 64]) / (10000 * mem[_12277 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[_12277 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12277 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
                                if mem[_12277 + 32]:
                                    if False and mem[_12277 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12277 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12277 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12277 + 64] and 10000 > -1 / mem[_12277 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12277 + 64] / 10000 != mem[_12277 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12277 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12277 + 64] < 10000 * mem[_12277 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12277 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12277 + 64]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12277 + 32]:
                                    if mem[_12277 + 64] and 10000 > -1 / mem[_12277 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12277 + 64] / 10000 != mem[_12277 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12277 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12277 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12277 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12277 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 32]) / mem[_12277 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12277 + 64] and 10000 > -1 / mem[_12277 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12277 + 64] / 10000 != mem[_12277 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12277 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12277 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12277 + 32]) / (10000 * mem[_12277 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
            else:
                _8145 = mem[mem[(32 * idx) + 128] + 64]
                _8160 = mem[64]
                _8161 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_8161 + 32] = mem[_8161 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                _8184 = mem[_8161]
                s = 0
                while s < _8184:
                    mem[_8160 + s + 36] = mem[_8161 + s + 32]
                    _8125 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_8184) <= _8184:
                    staticcall address(_8145).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8160 + _8184 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8139):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _12232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12232] = return_data.size
                        mem[_12232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8139):
                            if mem[_12232 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12232 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12232 + 32]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12232 + 64]:
                                    if mem[_12232 + 32] and 10000 > -1 / mem[_12232 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 32] / 10000 != mem[_12232 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12232 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12232 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12232 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 64]) / mem[_12232 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12232 + 32] and 10000 > -1 / mem[_12232 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 32] / 10000 != mem[_12232 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12232 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 64]) / (10000 * mem[_12232 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[_12232 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12232 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12232 + 64]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12232 + 32]:
                                    if mem[_12232 + 64] and 10000 > -1 / mem[_12232 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 64] / 10000 != mem[_12232 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12232 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12232 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12232 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 32]) / mem[_12232 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12232 + 64] and 10000 > -1 / mem[_12232 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12232 + 64] / 10000 != mem[_12232 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12232 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12232 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12232 + 32]) / (10000 * mem[_12232 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    mem[_8160 + _8184 + 36] = 0
                    staticcall address(_8145).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _8160 + _8184 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8139):
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[160]:
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[160]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[128] and 10000 > -1 / mem[128]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[128] / 10000 != mem[128]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[160] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[128] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
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
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[128]:
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[128]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[160] and 10000 > -1 / mem[160]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[160] / 10000 != mem[160]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _12282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_12282] = return_data.size
                        mem[_12282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + _4065 + 32] <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if mem[_8132 + 12 len 20] == address(_8139):
                            if mem[_12282 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12282 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
                                if mem[_12282 + 64]:
                                    if False and mem[_12282 + 64] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12282 + 64]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12282 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12282 + 32] and 10000 > -1 / mem[_12282 + 32]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12282 + 32] / 10000 != mem[_12282 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12282 + 32] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12282 + 32] < 10000 * mem[_12282 + 32]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12282 + 32]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12282 + 32]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12282 + 64]:
                                    if mem[_12282 + 32] and 10000 > -1 / mem[_12282 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12282 + 32] / 10000 != mem[_12282 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12282 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12282 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12282 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12282 + 64]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 64]) / mem[_12282 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12282 + 32] and 10000 > -1 / mem[_12282 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12282 + 32] / 10000 != mem[_12282 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12282 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12282 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 64]) / (10000 * mem[_12282 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            if mem[_12282 + 64] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if mem[_12282 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                            if 10000 < mem[_8132 + 128]:
                                revert with 'NH{q', 17
                            if not -mem[_8132 + 128] + 10000:
                                if mem[_12282 + 32]:
                                    if False and mem[_12282 + 32] > 0:
                                        revert with 'NH{q', 17
                                    if not mem[_12282 + 32]:
                                        revert with 'NH{q', 18
                                    if 0 / mem[_12282 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                if mem[_12282 + 64] and 10000 > -1 / mem[_12282 + 64]:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12282 + 64] / 10000 != mem[_12282 + 64]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_12282 + 64] > -1:
                                    revert with 'NH{q', 17
                                if 10000 * mem[_12282 + 64] < 10000 * mem[_12282 + 64]:
                                    revert with 0, 'ds-math-add-overflow'
                                if not 10000 * mem[_12282 + 64]:
                                    revert with 'NH{q', 18
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12282 + 64]
                            else:
                                if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    revert with 'NH{q', 18
                                if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_12282 + 32]:
                                    if mem[_12282 + 64] and 10000 > -1 / mem[_12282 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12282 + 64] / 10000 != mem[_12282 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12282 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12282 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12282 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 17
                                    if not mem[_12282 + 32]:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 32]) / mem[_12282 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12282 + 64] and 10000 > -1 / mem[_12282 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12282 + 64] / 10000 != mem[_12282 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12282 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                        revert with 'NH{q', 17
                                    if (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12282 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12282 + 32]) / (10000 * mem[_12282 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
        else:
            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xd8aa70f7990dab4a383a0d8a57df7a372916575d:
                _8164 = mem[mem[(32 * idx) + 128]]
                _8165 = mem[mem[(32 * idx) + 128] + 32]
                if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                    _8194 = mem[mem[(32 * idx) + 128] + 64]
                    _8230 = mem[64]
                    _8231 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8231 + 32] = mem[_8231 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8298 = mem[_8231]
                    s = 0
                    while s < _8298:
                        mem[_8230 + s + 36] = mem[_8231 + s + 32]
                        _8125 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8298) <= _8298:
                        staticcall address(_8194).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8230 + _8298 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8164):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12238 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12238] = return_data.size
                            mem[_12238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8164):
                                if mem[_12238 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12238 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12238 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12238 + 64]:
                                        if mem[_12238 + 32] and 10000 > -1 / mem[_12238 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 32] / 10000 != mem[_12238 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12238 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12238 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12238 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 64]) / mem[_12238 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12238 + 32] and 10000 > -1 / mem[_12238 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 32] / 10000 != mem[_12238 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12238 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 64]) / (10000 * mem[_12238 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12238 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12238 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12238 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12238 + 32]:
                                        if mem[_12238 + 64] and 10000 > -1 / mem[_12238 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 64] / 10000 != mem[_12238 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12238 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12238 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12238 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 32]) / mem[_12238 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12238 + 64] and 10000 > -1 / mem[_12238 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12238 + 64] / 10000 != mem[_12238 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12238 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12238 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12238 + 32]) / (10000 * mem[_12238 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        mem[_8230 + _8298 + 36] = 0
                        staticcall address(_8194).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8230 + _8298 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8164):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12298] = return_data.size
                            mem[_12298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8164):
                                if mem[_12298 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12298 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    if mem[_12298 + 64]:
                                        if False and mem[_12298 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12298 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12298 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12298 + 32] and 10000 > -1 / mem[_12298 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12298 + 32] / 10000 != mem[_12298 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12298 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12298 + 32] < 10000 * mem[_12298 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12298 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12298 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12298 + 64]:
                                        if mem[_12298 + 32] and 10000 > -1 / mem[_12298 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12298 + 32] / 10000 != mem[_12298 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12298 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12298 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12298 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12298 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 64]) / mem[_12298 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12298 + 32] and 10000 > -1 / mem[_12298 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12298 + 32] / 10000 != mem[_12298 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12298 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12298 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 64]) / (10000 * mem[_12298 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12298 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12298 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    if mem[_12298 + 32]:
                                        if False and mem[_12298 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12298 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12298 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12298 + 64] and 10000 > -1 / mem[_12298 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12298 + 64] / 10000 != mem[_12298 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12298 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12298 + 64] < 10000 * mem[_12298 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12298 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12298 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12298 + 32]:
                                        if mem[_12298 + 64] and 10000 > -1 / mem[_12298 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12298 + 64] / 10000 != mem[_12298 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12298 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12298 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12298 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12298 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 32]) / mem[_12298 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12298 + 64] and 10000 > -1 / mem[_12298 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12298 + 64] / 10000 != mem[_12298 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12298 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12298 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12298 + 32]) / (10000 * mem[_12298 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    _8195 = mem[mem[(32 * idx) + 128] + 64]
                    _8234 = mem[64]
                    _8235 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_8235 + 32] = mem[_8235 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                    _8299 = mem[_8235]
                    s = 0
                    while s < _8299:
                        mem[_8234 + s + 36] = mem[_8235 + s + 32]
                        _8125 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_8299) <= _8299:
                        staticcall address(_8195).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8234 + _8299 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8165):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12240 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12240] = return_data.size
                            mem[_12240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8165):
                                if mem[_12240 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12240 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12240 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12240 + 64]:
                                        if mem[_12240 + 32] and 10000 > -1 / mem[_12240 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 32] / 10000 != mem[_12240 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12240 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12240 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12240 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 64]) / mem[_12240 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12240 + 32] and 10000 > -1 / mem[_12240 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 32] / 10000 != mem[_12240 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12240 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 64]) / (10000 * mem[_12240 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12240 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12240 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12240 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12240 + 32]:
                                        if mem[_12240 + 64] and 10000 > -1 / mem[_12240 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 64] / 10000 != mem[_12240 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12240 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12240 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12240 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 32]) / mem[_12240 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12240 + 64] and 10000 > -1 / mem[_12240 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12240 + 64] / 10000 != mem[_12240 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12240 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12240 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12240 + 32]) / (10000 * mem[_12240 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        mem[_8234 + _8299 + 36] = 0
                        staticcall address(_8195).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8234 + _8299 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8165):
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[160]:
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[160]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[128] and 10000 > -1 / mem[128]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[128] / 10000 != mem[128]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[160] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[128] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
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
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[128]:
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[128]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[160] and 10000 > -1 / mem[160]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[160] / 10000 != mem[160]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            _12303 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_12303] = return_data.size
                            mem[_12303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + _4065 + 32] <= 0:
                                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                            if mem[_8132 + 12 len 20] == address(_8165):
                                if mem[_12303 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12303 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    if mem[_12303 + 64]:
                                        if False and mem[_12303 + 64] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12303 + 64]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12303 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12303 + 32] and 10000 > -1 / mem[_12303 + 32]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12303 + 32] / 10000 != mem[_12303 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12303 + 32] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12303 + 32] < 10000 * mem[_12303 + 32]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12303 + 32]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12303 + 32]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12303 + 64]:
                                        if mem[_12303 + 32] and 10000 > -1 / mem[_12303 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12303 + 32] / 10000 != mem[_12303 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12303 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12303 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12303 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12303 + 64]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 64]) / mem[_12303 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12303 + 32] and 10000 > -1 / mem[_12303 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12303 + 32] / 10000 != mem[_12303 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12303 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12303 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 64]) / (10000 * mem[_12303 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                if mem[_12303 + 64] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if mem[_12303 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                if 10000 < mem[_8132 + 128]:
                                    revert with 'NH{q', 17
                                if not -mem[_8132 + 128] + 10000:
                                    if mem[_12303 + 32]:
                                        if False and mem[_12303 + 32] > 0:
                                            revert with 'NH{q', 17
                                        if not mem[_12303 + 32]:
                                            revert with 'NH{q', 18
                                        if 0 / mem[_12303 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                    if mem[_12303 + 64] and 10000 > -1 / mem[_12303 + 64]:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12303 + 64] / 10000 != mem[_12303 + 64]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_12303 + 64] > -1:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[_12303 + 64] < 10000 * mem[_12303 + 64]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if not 10000 * mem[_12303 + 64]:
                                        revert with 'NH{q', 18
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12303 + 64]
                                else:
                                    if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        revert with 'NH{q', 18
                                    if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not mem[_12303 + 32]:
                                        if mem[_12303 + 64] and 10000 > -1 / mem[_12303 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12303 + 64] / 10000 != mem[_12303 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12303 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12303 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                    else:
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12303 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 17
                                        if not mem[_12303 + 32]:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 32]) / mem[_12303 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12303 + 64] and 10000 > -1 / mem[_12303 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12303 + 64] / 10000 != mem[_12303 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12303 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                            revert with 'NH{q', 17
                                        if (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12303 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12303 + 32]) / (10000 * mem[_12303 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
            else:
                if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xb9a9bb6cc39387548baa7185fbff51d47eef8771:
                    _8170 = mem[mem[(32 * idx) + 128]]
                    _8171 = mem[mem[(32 * idx) + 128] + 32]
                    if mem[mem[(32 * idx) + 128] + 12 len 20] < mem[mem[(32 * idx) + 128] + 44 len 20]:
                        _8228 = mem[mem[(32 * idx) + 128] + 64]
                        _8268 = mem[64]
                        _8269 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8269 + 32] = mem[_8269 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8312 = mem[_8269]
                        s = 0
                        while s < _8312:
                            mem[_8268 + s + 36] = mem[_8269 + s + 32]
                            _8125 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8312) <= _8312:
                            staticcall address(_8228).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8268 + _8312 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8170):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12234 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12234] = return_data.size
                                mem[_12234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8170):
                                    if mem[_12234 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12234 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12234 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12234 + 64]:
                                            if mem[_12234 + 32] and 10000 > -1 / mem[_12234 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 32] / 10000 != mem[_12234 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12234 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12234 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12234 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 64]) / mem[_12234 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12234 + 32] and 10000 > -1 / mem[_12234 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 32] / 10000 != mem[_12234 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12234 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 64]) / (10000 * mem[_12234 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12234 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12234 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12234 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12234 + 32]:
                                            if mem[_12234 + 64] and 10000 > -1 / mem[_12234 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 64] / 10000 != mem[_12234 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12234 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12234 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12234 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 32]) / mem[_12234 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12234 + 64] and 10000 > -1 / mem[_12234 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12234 + 64] / 10000 != mem[_12234 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12234 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12234 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12234 + 32]) / (10000 * mem[_12234 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            mem[_8268 + _8312 + 36] = 0
                            staticcall address(_8228).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8268 + _8312 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8170):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12288] = return_data.size
                                mem[_12288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8170):
                                    if mem[_12288 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12288 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        if mem[_12288 + 64]:
                                            if False and mem[_12288 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12288 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12288 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12288 + 32] and 10000 > -1 / mem[_12288 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12288 + 32] / 10000 != mem[_12288 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12288 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12288 + 32] < 10000 * mem[_12288 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12288 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12288 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12288 + 64]:
                                            if mem[_12288 + 32] and 10000 > -1 / mem[_12288 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12288 + 32] / 10000 != mem[_12288 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12288 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12288 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12288 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12288 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 64]) / mem[_12288 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12288 + 32] and 10000 > -1 / mem[_12288 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12288 + 32] / 10000 != mem[_12288 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12288 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12288 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 64]) / (10000 * mem[_12288 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12288 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12288 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        if mem[_12288 + 32]:
                                            if False and mem[_12288 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12288 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12288 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12288 + 64] and 10000 > -1 / mem[_12288 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12288 + 64] / 10000 != mem[_12288 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12288 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12288 + 64] < 10000 * mem[_12288 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12288 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12288 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12288 + 32]:
                                            if mem[_12288 + 64] and 10000 > -1 / mem[_12288 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12288 + 64] / 10000 != mem[_12288 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12288 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12288 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12288 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12288 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 32]) / mem[_12288 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12288 + 64] and 10000 > -1 / mem[_12288 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12288 + 64] / 10000 != mem[_12288 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12288 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12288 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12288 + 32]) / (10000 * mem[_12288 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                    else:
                        _8229 = mem[mem[(32 * idx) + 128] + 64]
                        _8272 = mem[64]
                        _8273 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_8273 + 32] = mem[_8273 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
                        _8313 = mem[_8273]
                        s = 0
                        while s < _8313:
                            mem[_8272 + s + 36] = mem[_8273 + s + 32]
                            _8125 = mem[96]
                            s = s + 32
                            continue 
                        if ceil32(_8313) <= _8313:
                            staticcall address(_8229).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8272 + _8313 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8171):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12236 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12236] = return_data.size
                                mem[_12236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8171):
                                    if mem[_12236 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12236 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12236 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12236 + 64]:
                                            if mem[_12236 + 32] and 10000 > -1 / mem[_12236 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 32] / 10000 != mem[_12236 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12236 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12236 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12236 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 64]) / mem[_12236 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12236 + 32] and 10000 > -1 / mem[_12236 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 32] / 10000 != mem[_12236 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12236 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 64]) / (10000 * mem[_12236 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12236 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12236 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12236 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12236 + 32]:
                                            if mem[_12236 + 64] and 10000 > -1 / mem[_12236 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 64] / 10000 != mem[_12236 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12236 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12236 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12236 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 32]) / mem[_12236 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12236 + 64] and 10000 > -1 / mem[_12236 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12236 + 64] / 10000 != mem[_12236 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12236 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12236 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12236 + 32]) / (10000 * mem[_12236 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                        else:
                            mem[_8272 + _8313 + 36] = 0
                            staticcall address(_8229).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _8272 + _8313 + -mem[64] + 32]
                            if not return_data.size:
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8171):
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[128]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[160]:
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[160] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[160]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / mem[160] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[128] and 10000 > -1 / mem[128]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[128] / 10000 != mem[128]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[128] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[128]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[160]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[160]) / (10000 * mem[128]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[160] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[128] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
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
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[160]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[128]:
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[128] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[128]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / mem[128] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[160] and 10000 > -1 / mem[160]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[160] / 10000 != mem[160]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[160] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[160]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[128]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[128]) / (10000 * mem[160]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                            else:
                                _12293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_12293] = return_data.size
                                mem[_12293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if idx >= mem[_4065]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _4065 + 32] <= 0:
                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                                if mem[_8132 + 12 len 20] == address(_8171):
                                    if mem[_12293 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12293 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        if mem[_12293 + 64]:
                                            if False and mem[_12293 + 64] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12293 + 64]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12293 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12293 + 32] and 10000 > -1 / mem[_12293 + 32]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12293 + 32] / 10000 != mem[_12293 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12293 + 32] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12293 + 32] < 10000 * mem[_12293 + 32]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12293 + 32]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12293 + 32]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12293 + 64]:
                                            if mem[_12293 + 32] and 10000 > -1 / mem[_12293 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12293 + 32] / 10000 != mem[_12293 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12293 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12293 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12293 + 64] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12293 + 64]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 64]) / mem[_12293 + 64] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12293 + 32] and 10000 > -1 / mem[_12293 + 32]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12293 + 32] / 10000 != mem[_12293 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12293 + 32] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12293 + 32]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 64]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 64]) / (10000 * mem[_12293 + 32]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                else:
                                    if mem[_12293 + 64] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if mem[_12293 + 32] <= 0:
                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                    if 10000 < mem[_8132 + 128]:
                                        revert with 'NH{q', 17
                                    if not -mem[_8132 + 128] + 10000:
                                        if mem[_12293 + 32]:
                                            if False and mem[_12293 + 32] > 0:
                                                revert with 'NH{q', 17
                                            if not mem[_12293 + 32]:
                                                revert with 'NH{q', 18
                                            if 0 / mem[_12293 + 32]:
                                                revert with 0, 'ds-math-mul-overflow'
                                        if mem[_12293 + 64] and 10000 > -1 / mem[_12293 + 64]:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12293 + 64] / 10000 != mem[_12293 + 64]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_12293 + 64] > -1:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[_12293 + 64] < 10000 * mem[_12293 + 64]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if not 10000 * mem[_12293 + 64]:
                                            revert with 'NH{q', 18
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = 0 / 10000 * mem[_12293 + 64]
                                    else:
                                        if mem[(32 * idx) + _4065 + 32] and -mem[_8132 + 128] + 10000 > -1 / mem[(32 * idx) + _4065 + 32]:
                                            revert with 'NH{q', 17
                                        if not -mem[_8132 + 128] + 10000:
                                            revert with 'NH{q', 18
                                        if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) / -mem[_8132 + 128] + 10000 != mem[(32 * idx) + _4065 + 32]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if not mem[_12293 + 32]:
                                            if mem[_12293 + 64] and 10000 > -1 / mem[_12293 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12293 + 64] / 10000 != mem[_12293 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12293 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12293 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = 0 / (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                                        else:
                                            if (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) and mem[_12293 + 32] > -1 / (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 17
                                            if not mem[_12293 + 32]:
                                                revert with 'NH{q', 18
                                            if (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 32]) / mem[_12293 + 32] != (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 0, 'ds-math-mul-overflow'
                                            if mem[_12293 + 64] and 10000 > -1 / mem[_12293 + 64]:
                                                revert with 'NH{q', 17
                                            if 10000 * mem[_12293 + 64] / 10000 != mem[_12293 + 64]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if 10000 * mem[_12293 + 64] > (-10000 * mem[(32 * idx) + _4065 + 32]) + (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) - 1:
                                                revert with 'NH{q', 17
                                            if (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]) < 10000 * mem[_12293 + 64]:
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32]):
                                                revert with 'NH{q', 18
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = (10000 * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32] * mem[_12293 + 32]) / (10000 * mem[_12293 + 64]) + (10000 * mem[(32 * idx) + _4065 + 32]) - (mem[_8132 + 128] * mem[(32 * idx) + _4065 + 32])
                else:
                    if mem[mem[(32 * idx) + 128] + 160] == 5:
                        _8175 = mem[mem[(32 * idx) + 128] + 96]
                        _8187 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_8187 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_8187]:
                            revert with 'NH{q', 50
                        mem[_8187 + 32] = mem[_8132 + 12 len 20]
                        if 1 >= mem[_8187]:
                            revert with 'NH{q', 50
                        mem[_8187 + 64] = mem[_8132 + 44 len 20]
                        if idx >= mem[_4065]:
                            revert with 'NH{q', 50
                        _8296 = mem[(32 * idx) + _4065 + 32]
                        mem[_8187 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_8187 + 100] = _8296
                        mem[_8187 + 132] = 64
                        mem[_8187 + 164] = mem[_8187]
                        s = 0
                        t = _8187 + 32
                        u = _8187 + 196
                        while s < mem[_8187]:
                            mem[u] = mem[t + 12 len 20]
                            _8125 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(address(_8175))
                        staticcall address(_8175).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _8187 + (32 * mem[_8187]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12213 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12283 = mem[_12213]
                        require mem[_12213] <= test266151307()
                        require _12213 + mem[_12213] + 31 < _12213 + return_data.size
                        _12433 = mem[_12213 + mem[_12213]]
                        if mem[_12213 + mem[_12213]] > test266151307():
                            revert with 'NH{q', 65
                        if _12213 + ceil32(return_data.size) + floor32(mem[_12213 + mem[_12213]]) + 1 > test266151307() or floor32(mem[_12213 + mem[_12213]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12213 + ceil32(return_data.size) + floor32(mem[_12213 + mem[_12213]]) + 1
                        mem[_12213 + ceil32(return_data.size)] = _12433
                        require _12283 + (32 * _12433) + 32 <= return_data.size
                        s = 0
                        t = _12213 + _12283 + 32
                        u = _12213 + ceil32(return_data.size) + 32
                        while s < _12433:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            _8125 = mem[96]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        if _12433 < 1:
                            revert with 'NH{q', 17
                        if _12433 - 1 >= _12433:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_4065]:
                            revert with 'NH{q', 50
                        mem[(32 * idx + 1) + _4065 + 32] = mem[(32 * _12433 - 1) + _12213 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + 128] + 160] != 8:
                            if mem[mem[(32 * idx) + 128] + 160] != 12:
                                if mem[mem[(32 * idx) + 128] + 160] != 13:
                                    require mem[mem[(32 * idx) + 128] + 160] == 14
                                    _8258 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    _8282 = mem[(32 * idx) + _4065 + 32]
                                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 36] = address(_8258)
                                    mem[mem[64] + 68] = _8282
                                    require ext_code.size(0x66357dcace80431aee0a7507e2e361b7e2402370)
                                    staticcall 0x66357dcace80431aee0a7507e2e361b7e2402370.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4], address(_8258), _8282
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8984 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8984] == mem[_8984]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_8984]
                                else:
                                    _8219 = mem[mem[(32 * idx) + 128]]
                                    _8220 = mem[mem[(32 * idx) + 128] + 32]
                                    if idx >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    _8260 = mem[(32 * idx) + _4065 + 32]
                                    mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                                    mem[mem[64] + 68] = address(_8220)
                                    mem[mem[64] + 100] = _8260
                                    require ext_code.size(0x9e372b445723e71117b59393aaba05ad3b54ad3f)
                                    staticcall 0x9e372b445723e71117b59393aaba05ad3b54ad3f.0xd7176ca9 with:
                                            gas gas_remaining wei
                                           args 0x9ab2de34a33fb459b538c43f251eb825645e8595, address(_8219), address(_8220), _8260
                                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9254 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    require mem[_9254] == mem[_9254]
                                    require mem[_9254 + 32] == mem[_9254 + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_4065]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_9254]
                            else:
                                _8222 = mem[64]
                                mem[mem[64]] = 1
                                mem[64] = mem[64] + 64
                                mem[_8222 + 32] = call.data[calldata.size]
                                if 0 >= mem[_8222]:
                                    revert with 'NH{q', 50
                                mem[_8222 + 32] = mem[_8132 + 76 len 20]
                                mem[_8222 + 64] = 2
                                mem[64] = _8222 + 160
                                mem[_8222 + 96 len 64] = call.data[calldata.size len 64]
                                mem[_8222 + 96] = mem[_8132 + 12 len 20]
                                mem[_8222 + 128] = mem[_8132 + 44 len 20]
                                _8335 = mem[_8132 + 96]
                                mem[_8222 + 160] = 0xa8312b1d00000000000000000000000000000000000000000000000000000000
                                mem[_8222 + 164] = cd[4]
                                mem[_8222 + 196] = 96
                                mem[_8222 + 260] = mem[_8222]
                                s = 0
                                t = _8222 + 32
                                u = _8222 + 292
                                while s < mem[_8222]:
                                    mem[u] = mem[t + 12 len 20]
                                    _8125 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_8222 + 228] = (32 * mem[_8222]) + 128
                                mem[_8222 + (32 * mem[_8222]) + 292] = 2
                                s = 0
                                t = _8222 + 96
                                u = _8222 + (32 * mem[_8222]) + 324
                                while s < 2:
                                    mem[u] = mem[t + 12 len 20]
                                    _8125 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(address(_8335))
                                staticcall address(_8335).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _8222 + (32 * mem[_8222]) + -mem[64] + 384]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _15805 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _15807 = mem[_15805]
                                require mem[_15805] <= test266151307()
                                require _15805 + mem[_15805] + 31 < _15805 + return_data.size
                                _15809 = mem[_15805 + mem[_15805]]
                                if mem[_15805 + mem[_15805]] > test266151307():
                                    revert with 'NH{q', 65
                                if _15805 + ceil32(return_data.size) + floor32(mem[_15805 + mem[_15805]]) + 1 > test266151307() or floor32(mem[_15805 + mem[_15805]]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = _15805 + ceil32(return_data.size) + floor32(mem[_15805 + mem[_15805]]) + 1
                                mem[_15805 + ceil32(return_data.size)] = _15809
                                require _15807 + (32 * _15809) + 32 <= return_data.size
                                s = 0
                                t = _15805 + _15807 + 32
                                u = _15805 + ceil32(return_data.size) + 32
                                while s < _15809:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    _8125 = mem[96]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                if _15809 < 1:
                                    revert with 'NH{q', 17
                                if _15809 - 1 >= _15809:
                                    revert with 'NH{q', 50
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_4065]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx + 1) + _4065 + 32] = mem[(32 * _15809 - 1) + _15805 + ceil32(return_data.size) + 32]
                        else:
                            if idx >= mem[_4065]:
                                revert with 'NH{q', 50
                            _8193 = mem[(32 * idx) + _4065 + 32]
                            _8225 = mem[mem[(32 * idx) + 128] + 32]
                            _8263 = sha3(address(mem[mem[(32 * idx) + 128]]), sha3(mem[mem[(32 * idx) + 128] + 108 len 20], 0))
                            mem[0] = mem[mem[(32 * idx) + 128] + 44 len 20]
                            mem[32] = sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0)
                            _8265 = sha3(address(_8225), sha3(address(mem[mem[(32 * idx) + 128] + 96]), 0))
                            if stor[_8263] == uint256(sub_f119462d[address(mem[mem[(32 * idx) + 128] + 96])][address(_8225)]):
                                revert with 0, 'BAD CURVE'
                            _8294 = mem[mem[(32 * idx) + 128] + 96]
                            if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                    if mem[mem[(32 * idx) + 128] + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                        mem[mem[64] + 68] = _8193
                                        require ext_code.size(address(_8294))
                                        staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9156 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9156] == mem[_9156]
                                        if mem[_9156] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_9156] - 1
                                    else:
                                        if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                            mem[mem[64] + 68] = _8193
                                            require ext_code.size(address(_8294))
                                            staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9209 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9209] == mem[_9209]
                                            if mem[_9209] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_9209] - 1
                                        else:
                                            if mem[mem[(32 * idx) + 128] + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                mem[mem[64] + 68] = _8193
                                                require ext_code.size(address(_8294))
                                                staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9255 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9255] == mem[_9255]
                                                if mem[_9255] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_9255] - 1
                                            else:
                                                if mem[mem[(32 * idx) + 128] + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                mem[mem[64] + 68] = _8193
                                                require ext_code.size(address(_8294))
                                                staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9275 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9275] == mem[_9275]
                                                if mem[_9275] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_9275] - 1
                                else:
                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                    mem[mem[64] + 68] = _8193
                                    require ext_code.size(address(_8294))
                                    staticcall address(_8294).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8940 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_8940] == mem[_8940]
                                    if mem[_8132 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                        mem[mem[64] + 68] = _8193
                                        require ext_code.size(address(_8294))
                                        staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _9704 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_9704] == mem[_9704]
                                        if mem[_9704] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_9704] - 1
                                    else:
                                        if mem[_8132 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                            mem[mem[64] + 68] = _8193
                                            require ext_code.size(address(_8294))
                                            staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _9754 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_9754] == mem[_9754]
                                            if mem[_9754] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_9754] - 1
                                        else:
                                            if mem[_8132 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                mem[mem[64] + 68] = _8193
                                                require ext_code.size(address(_8294))
                                                staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _9786 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_9786] == mem[_9786]
                                                if mem[_9786] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_9786] - 1
                                            else:
                                                if mem[_8132 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if mem[_8940] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_8940] - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                    mem[mem[64] + 68] = _8193
                                                    require ext_code.size(address(_8294))
                                                    staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _9815 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_9815] == mem[_9815]
                                                    if mem[_9815] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_9815] - 1
                            else:
                                mem[mem[64] + 4] = stor[_8263]
                                mem[mem[64] + 36] = stor[_8265]
                                mem[mem[64] + 68] = _8193
                                require ext_code.size(address(_8294))
                                staticcall address(_8294).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args stor[_8263], stor[_8265], _8193
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _8873 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_8873] == mem[_8873]
                                if mem[_8873] and 9996 > -1 / mem[_8873]:
                                    revert with 'NH{q', 17
                                if mem[_8132 + 108 len 20] != 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
                                    if mem[_8132 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                        mem[mem[64] + 68] = _8193
                                        require ext_code.size(address(_8294))
                                        staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _10200 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_10200] == mem[_10200]
                                        if mem[_10200] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_10200] - 1
                                    else:
                                        if mem[_8132 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                            mem[mem[64] + 68] = _8193
                                            require ext_code.size(address(_8294))
                                            staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _10270 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_10270] == mem[_10270]
                                            if mem[_10270] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_10270] - 1
                                        else:
                                            if mem[_8132 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                mem[mem[64] + 68] = _8193
                                                require ext_code.size(address(_8294))
                                                staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _10348 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_10348] == mem[_10348]
                                                if mem[_10348] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_10348] - 1
                                            else:
                                                if mem[_8132 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if 9996 * mem[_8873] / 10000 < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = (9996 * mem[_8873] / 10000) - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                    mem[mem[64] + 68] = _8193
                                                    require ext_code.size(address(_8294))
                                                    staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _10401 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_10401] == mem[_10401]
                                                    if mem[_10401] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_10401] - 1
                                else:
                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                    mem[mem[64] + 68] = _8193
                                    require ext_code.size(address(_8294))
                                    staticcall address(_8294).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _10079 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_10079] == mem[_10079]
                                    if mem[_8132 + 108 len 20] == 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                                        mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                        mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                        mem[mem[64] + 68] = _8193
                                        require ext_code.size(address(_8294))
                                        staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11668 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11668] == mem[_11668]
                                        if mem[_11668] < 1:
                                            revert with 'NH{q', 17
                                        if idx > -2:
                                            revert with 'NH{q', 17
                                        if idx + 1 >= mem[_4065]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx + 1) + _4065 + 32] = mem[_11668] - 1
                                    else:
                                        if mem[_8132 + 108 len 20] == 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                                            mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                            mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                            mem[mem[64] + 68] = _8193
                                            require ext_code.size(address(_8294))
                                            staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11706 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11706] == mem[_11706]
                                            if mem[_11706] < 1:
                                                revert with 'NH{q', 17
                                            if idx > -2:
                                                revert with 'NH{q', 17
                                            if idx + 1 >= mem[_4065]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx + 1) + _4065 + 32] = mem[_11706] - 1
                                        else:
                                            if mem[_8132 + 108 len 20] == 0x93004d8477f117ea359b71ec02f2706c8175c55c:
                                                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                mem[mem[64] + 68] = _8193
                                                require ext_code.size(address(_8294))
                                                staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                        gas gas_remaining wei
                                                       args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11720 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11720] == mem[_11720]
                                                if mem[_11720] < 1:
                                                    revert with 'NH{q', 17
                                                if idx > -2:
                                                    revert with 'NH{q', 17
                                                if idx + 1 >= mem[_4065]:
                                                    revert with 'NH{q', 50
                                                mem[(32 * idx + 1) + _4065 + 32] = mem[_11720] - 1
                                            else:
                                                if mem[_8132 + 108 len 20] != 0xd79138c49c49200a1afc935171d1bdad084fdc95:
                                                    if mem[_10079] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_10079] - 1
                                                else:
                                                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('var', '_8263')))
                                                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('var', '_8265')))
                                                    mem[mem[64] + 68] = _8193
                                                    require ext_code.size(address(_8294))
                                                    staticcall address(_8294).get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                                            gas gas_remaining wei
                                                           args ('signextend', 15, ('stor', ('var', '_8263'))), ('signextend', 15, ('stor', ('var', '_8265'))), _8193
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11749 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11749] == mem[_11749]
                                                    if mem[_11749] < 1:
                                                        revert with 'NH{q', 17
                                                    if idx > -2:
                                                        revert with 'NH{q', 17
                                                    if idx + 1 >= mem[_4065]:
                                                        revert with 'NH{q', 50
                                                    mem[(32 * idx + 1) + _4065 + 32] = mem[_11749] - 1
        if idx == -1:
            revert with 'NH{q', 17
        _8125 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _8141 = mem[_4065]
    mem[mem[64] + 32] = mem[_4065]
    mem[mem[64] + 64 len 32 * _8141] = mem[_4065 + 32 len 32 * _8141]
    return 32, mem[mem[64] + 32 len (32 * _8141) + 32]
}



}
