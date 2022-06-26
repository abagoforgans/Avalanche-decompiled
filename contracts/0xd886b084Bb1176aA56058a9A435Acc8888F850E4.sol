contract main {




// =====================  Runtime code  =====================


#
#  - sub_0886d0df(?)
#  - sub_10fec347(?)
#  - sub_36888411(?)
#  - sub_407045a8(?)
#  - sub_500f1313(?)
#  - sub_5bf03be3(?)
#  - sub_9ead80fd(?)
#  - sub_d80c6821(?)
#
address stor0;
array of struct stor1;

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
        _53 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_53] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_53 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_53 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_53 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_53 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_53 + 160] = cd[(s + 160)]
        mem[t] = _53
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    if stor0:
        if mem[96] == 3:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[128] + 160] == 1:
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[160] + 160] != 1:
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[192] + 160] == 1:
                        _66 = mem[64]
                        mem[64] = mem[64] + (32 * stor1.length) + 32
                        mem[_66] = stor1.length
                        if not stor1.length:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            idx = 0
                            while idx < stor1.length:
                                if idx >= stor1.length:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _66 + 44 len 20] != mem[mem[128] + 44 len 20]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                _107 = mem[64]
                                mem[64] = mem[64] + (32 * stor1.length) + 32
                                mem[_107] = stor1.length
                                if stor1.length:
                                    mem[0] = 1
                                    mem[_107 + 32] = address(stor1.field_0)
                                    idx = _107 + 32
                                    s = sha3(1)
                                    while _107 + (32 * stor1.length) > idx:
                                        mem[idx + 32] = stor1[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                idx = 0
                                while idx < stor1.length:
                                    if idx >= stor1.length:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _107 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[128] + 12 len 20] == mem[mem[192] + 44 len 20]:
                                        return 1
                                    else:
                                        return 0
                                return 0
                        else:
                            mem[0] = 1
                            mem[_66 + 32] = address(stor1.field_0)
                            idx = _66 + 32
                            s = 0
                            while _66 + (32 * stor1.length) > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            idx = 0
                            while idx < stor1.length:
                                if idx >= stor1.length:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _66 + 44 len 20] != mem[mem[128] + 44 len 20]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                _181 = mem[64]
                                mem[64] = mem[64] + (32 * stor1.length) + 32
                                mem[_181] = stor1.length
                                if stor1.length:
                                    mem[0] = 1
                                    mem[_181 + 32] = address(stor1.field_0)
                                    idx = _181 + 32
                                    s = sha3(1)
                                    while _181 + (32 * stor1.length) > idx:
                                        mem[idx + 32] = stor1[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                idx = 0
                                while idx < stor1.length:
                                    if idx >= stor1.length:
                                        revert with 'NH{q', 50
                                    if mem[(32 * idx) + _181 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        continue 
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if 0 >= mem[96]:
                                        revert with 'NH{q', 50
                                    if mem[mem[128] + 12 len 20] == mem[mem[192] + 44 len 20]:
                                        return 1
                                    else:
                                        return 0
                                return 0
    return 0
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
        _78 = mem[64]
        if mem[64] + 192 > test266151307() or mem[64] + 192 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 192
        require cd[s] == address(cd[s])
        mem[_78] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_78 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_78 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == address(cd[(s + 96)])
        mem[_78 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == cd[(s + 128)]
        mem[_78 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == cd[(s + 160)]
        mem[_78 + 160] = cd[(s + 160)]
        mem[t] = _78
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    if stor0:
        if mem[96] == 3:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[128] + 160] == 1:
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[mem[160] + 160] != 1:
                    if 2 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[mem[192] + 160] == 1:
                        _89 = mem[64]
                        mem[64] = mem[64] + (32 * stor1.length) + 32
                        mem[_89] = stor1.length
                        if not stor1.length:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            idx = 0
                            while idx < stor1.length:
                                if idx >= stor1.length:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _89 + 44 len 20] != mem[mem[128] + 44 len 20]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                _157 = mem[64]
                                mem[64] = mem[64] + (32 * stor1.length) + 32
                                mem[_157] = stor1.length
                                if not stor1.length:
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    idx = 0
                                    while idx < stor1.length:
                                        if idx >= stor1.length:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + _157 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[128] + 12 len 20] != mem[mem[192] + 44 len 20]:
                                            return cd[4]
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _227 = mem[128]
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _231 = mem[192]
                                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = mem[_227 + 12 len 20]
                                        mem[mem[64] + 36] = mem[_227 + 44 len 20]
                                        mem[mem[64] + 68] = mem[_227 + 76 len 20]
                                        mem[mem[64] + 100] = mem[_227 + 108 len 20]
                                        mem[mem[64] + 132] = mem[_227 + 128]
                                        mem[mem[64] + 164] = mem[_227 + 160]
                                        mem[mem[64] + 196] = mem[_231 + 12 len 20]
                                        mem[mem[64] + 228] = mem[_231 + 44 len 20]
                                        mem[mem[64] + 260] = mem[_231 + 76 len 20]
                                        mem[mem[64] + 292] = mem[_231 + 108 len 20]
                                        mem[mem[64] + 324] = mem[_231 + 128]
                                        mem[mem[64] + 356] = mem[_231 + 160]
                                        require ext_code.size(stor0)
                                        staticcall stor0.0x6fbc9807 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len 384]
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _276 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_276] == bool(mem[_276])
                                        require mem[_276 + 32] == mem[_276 + 32]
                                        if not mem[_276]:
                                            revert with 0, 'B'
                                        if not mem[_276 + 32]:
                                            return cd[4]
                                        mem[mem[64]] = mem[_276 + 32]
                                        return memory
                                          from mem[64]
                                           len 32
                                else:
                                    mem[0] = 1
                                    mem[_157 + 32] = address(stor1.field_0)
                                    idx = _157 + 32
                                    s = sha3(1)
                                    while _157 + (32 * stor1.length) > idx:
                                        mem[idx + 32] = stor1[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    idx = 0
                                    while idx < stor1.length:
                                        if idx >= stor1.length:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + _157 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[128] + 12 len 20] != mem[mem[192] + 44 len 20]:
                                            return cd[4]
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _412 = mem[128]
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _416 = mem[192]
                                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = mem[_412 + 12 len 20]
                                        mem[mem[64] + 36] = mem[_412 + 44 len 20]
                                        mem[mem[64] + 68] = mem[_412 + 76 len 20]
                                        mem[mem[64] + 100] = mem[_412 + 108 len 20]
                                        mem[mem[64] + 132] = mem[_412 + 128]
                                        mem[mem[64] + 164] = mem[_412 + 160]
                                        mem[mem[64] + 196] = mem[_416 + 12 len 20]
                                        mem[mem[64] + 228] = mem[_416 + 44 len 20]
                                        mem[mem[64] + 260] = mem[_416 + 76 len 20]
                                        mem[mem[64] + 292] = mem[_416 + 108 len 20]
                                        mem[mem[64] + 324] = mem[_416 + 128]
                                        mem[mem[64] + 356] = mem[_416 + 160]
                                        require ext_code.size(stor0)
                                        staticcall stor0.0x6fbc9807 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len 384]
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _452 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_452] == bool(mem[_452])
                                        require mem[_452 + 32] == mem[_452 + 32]
                                        if not mem[_452]:
                                            revert with 0, 'B'
                                        if not mem[_452 + 32]:
                                            return cd[4]
                                        mem[mem[64]] = mem[_452 + 32]
                                        return memory
                                          from mem[64]
                                           len 32
                                return cd[4]
                        else:
                            mem[0] = 1
                            mem[_89 + 32] = address(stor1.field_0)
                            idx = _89 + 32
                            s = 0
                            while _89 + (32 * stor1.length) > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            idx = 0
                            while idx < stor1.length:
                                if idx >= stor1.length:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + _89 + 44 len 20] != mem[mem[128] + 44 len 20]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                                _306 = mem[64]
                                mem[64] = mem[64] + (32 * stor1.length) + 32
                                mem[_306] = stor1.length
                                if not stor1.length:
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    idx = 0
                                    while idx < stor1.length:
                                        if idx >= stor1.length:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + _306 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[128] + 12 len 20] != mem[mem[192] + 44 len 20]:
                                            return cd[4]
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _414 = mem[128]
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _419 = mem[192]
                                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = mem[_414 + 12 len 20]
                                        mem[mem[64] + 36] = mem[_414 + 44 len 20]
                                        mem[mem[64] + 68] = mem[_414 + 76 len 20]
                                        mem[mem[64] + 100] = mem[_414 + 108 len 20]
                                        mem[mem[64] + 132] = mem[_414 + 128]
                                        mem[mem[64] + 164] = mem[_414 + 160]
                                        mem[mem[64] + 196] = mem[_419 + 12 len 20]
                                        mem[mem[64] + 228] = mem[_419 + 44 len 20]
                                        mem[mem[64] + 260] = mem[_419 + 76 len 20]
                                        mem[mem[64] + 292] = mem[_419 + 108 len 20]
                                        mem[mem[64] + 324] = mem[_419 + 128]
                                        mem[mem[64] + 356] = mem[_419 + 160]
                                        require ext_code.size(stor0)
                                        staticcall stor0.0x6fbc9807 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len 384]
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _453 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_453] == bool(mem[_453])
                                        require mem[_453 + 32] == mem[_453 + 32]
                                        if not mem[_453]:
                                            revert with 0, 'B'
                                        if not mem[_453 + 32]:
                                            return cd[4]
                                        mem[mem[64]] = mem[_453 + 32]
                                        return memory
                                          from mem[64]
                                           len 32
                                else:
                                    mem[0] = 1
                                    mem[_306 + 32] = address(stor1.field_0)
                                    idx = _306 + 32
                                    s = sha3(1)
                                    while _306 + (32 * stor1.length) > idx:
                                        mem[idx + 32] = stor1[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if 2 >= mem[96]:
                                        revert with 'NH{q', 50
                                    idx = 0
                                    while idx < stor1.length:
                                        if idx >= stor1.length:
                                            revert with 'NH{q', 50
                                        if mem[(32 * idx) + _306 + 44 len 20] != mem[mem[192] + 12 len 20]:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            continue 
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        if mem[mem[128] + 12 len 20] != mem[mem[192] + 44 len 20]:
                                            return cd[4]
                                        if 0 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _524 = mem[128]
                                        if 2 >= mem[96]:
                                            revert with 'NH{q', 50
                                        _526 = mem[192]
                                        mem[mem[64]] = 0x6fbc980700000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = mem[_524 + 12 len 20]
                                        mem[mem[64] + 36] = mem[_524 + 44 len 20]
                                        mem[mem[64] + 68] = mem[_524 + 76 len 20]
                                        mem[mem[64] + 100] = mem[_524 + 108 len 20]
                                        mem[mem[64] + 132] = mem[_524 + 128]
                                        mem[mem[64] + 164] = mem[_524 + 160]
                                        mem[mem[64] + 196] = mem[_526 + 12 len 20]
                                        mem[mem[64] + 228] = mem[_526 + 44 len 20]
                                        mem[mem[64] + 260] = mem[_526 + 76 len 20]
                                        mem[mem[64] + 292] = mem[_526 + 108 len 20]
                                        mem[mem[64] + 324] = mem[_526 + 128]
                                        mem[mem[64] + 356] = mem[_526 + 160]
                                        require ext_code.size(stor0)
                                        staticcall stor0.0x6fbc9807 with:
                                                gas gas_remaining wei
                                               args mem[mem[64] + 4 len 384]
                                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _544 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        require mem[_544] == bool(mem[_544])
                                        require mem[_544 + 32] == mem[_544 + 32]
                                        if not mem[_544]:
                                            revert with 0, 'B'
                                        if not mem[_544 + 32]:
                                            return cd[4]
                                        mem[mem[64]] = mem[_544 + 32]
                                        return memory
                                          from mem[64]
                                           len 32
                                return cd[4]
    return cd[4]
}

function sub_90c3d203(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg1) != 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        if address(arg1) == 0x7f90122bf0700f9e7e1f688fe926940e8839f353:
            if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 0
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 0, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
                    return 0, 2
            else:
                if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 1, 0
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            return 1, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
                    return 1, 2
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 1136658199763285550214466495421557379492992340248)
            if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    return 2, 0
            else:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    return 2, 1
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 1136658199763285550214466495421557379492992340248)
        else:
            if address(arg1) != 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd:
                if address(arg1) != 0x3a43a5851a3e3e0e25a3c1089670269786be1577:
                    revert with 0, 'not found'
                if address(arg2) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    if address(arg3) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                        return 0
                    return 0, 1
                if address(arg3) != 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
                    return 1, 0
                return 1, 1
            if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 0
                    else:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 0, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
                    return 0, 2
            else:
                if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 1, 0
                    else:
                        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                            return 1, 1
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
                    return 1, 2
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 958196781496191500749492833627164619010516239972)
            if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    return 2, 0
            else:
                if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    return 2, 1
            ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 958196781496191500749492833627164619010516239972)
        return 2, 2
    if address(arg2) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 0, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 0, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
        else:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 2, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
    else:
        if address(arg2) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 1, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 1, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
        else:
            if address(arg2) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 2, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 2, 4
            else:
                if address(arg2) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 0
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    else:
                        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 1
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                        else:
                            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 2
                            else:
                                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                                    return 3, 3
                    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
                    return 3, 4
    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 421523349434113839993385985742352365666273659819)
    if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 0
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
        else:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 2
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
    else:
        if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 1
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
        else:
            if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 2
            else:
                if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    return 4, 3
    ('eq', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 421523349434113839993385985742352365666273659819)
    return 4, 4
}



}
