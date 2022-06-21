contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e530192(?)
#
address stor0;
address stor2;
address stor4;
mapping of uint8 stor5;
address stor6;
address stor7;
address stor8;
array of struct stor9;
uint256 stor11;

function _fallback() payable {
    revert
}

function deposit() payable {
    if not msg.value:
        revert with 0, 'Message must hold a value'
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor7
    stor6 = arg1
}

function withdraw() {
    if stor6 != msg.sender:
        require msg.sender == stor7
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_a5e7af06(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor6 != msg.sender:
        require msg.sender == stor7
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_230f5492(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor6 != msg.sender:
        require msg.sender == stor7
    stor11 = ('cd', 4).length
    stor9.length = 0
    idx = 0
    while stor9.length > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor11:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor9.length++
        mem[0] = 9
        stor9[stor9.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_cd4648f8(?) {
    if stor6 != msg.sender:
        require msg.sender == stor7
    mem[64] = (32 * stor9.length) + 128
    mem[96] = stor9.length
    if not stor9.length:
        mem[(32 * stor9.length) + 128] = 32
        mem[(32 * stor9.length) + 160] = stor9.length
        idx = 0
        s = 128
        t = (32 * stor9.length) + 192
        while idx < stor9.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor9.length) + 128
           len (96 * stor9.length) + 64
    mem[128] = address(stor9.field_0)
    idx = 128
    s = 0
    while (32 * stor9.length) + 96 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor9.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor9.length) + -mem[64] + 192
}

function sub_d66517d4(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 36).length) + 128 > test266151307() or (32 * ('cd', 36).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    if msg.sender == stor6:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _23 = mem[128]
        mem[(32 * ('cd', 36).length) + 132] = address(cd[4])
        require ext_code.size(address(_23))
        staticcall address(_23).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
    else:
        require msg.sender == stor7
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _26 = mem[128]
        mem[(32 * ('cd', 36).length) + 132] = address(cd[4])
        require ext_code.size(address(_26))
        staticcall address(_26).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
    mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= cd[68]:
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = 0xe1853af600000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 132] = 96
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 228] = ('cd', 36).length
        idx = 0
        s = 128
        t = mem[64] + 132
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 164] = cd[68]
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 196] = address(cd[4])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (64 * ('cd', 36).length) + ceil32(return_data.size) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9b4a29a3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == stor6:
        idx = 0
        while idx < stor11:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _56 = mem[128]
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            mem[mem[64] + 4] = stor9[idx].field_0
            require ext_code.size(address(_56))
            staticcall address(_56).0x70a08231 with:
                    gas gas_remaining wei
                   args stor9[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_64]
            require mem[_64] == mem[_64]
            if mem[_64] > 0:
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = 9
                _71 = mem[64]
                mem[mem[64]] = 0xe1853af600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                _74 = mem[96]
                mem[mem[64] + 100] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 132
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 36] = _66
                mem[_71 + 68] = stor9[idx].field_0
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _71 + (32 * _74) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor7
        idx = 0
        while idx < stor11:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _57 = mem[128]
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            mem[mem[64] + 4] = stor9[idx].field_0
            require ext_code.size(address(_57))
            staticcall address(_57).0x70a08231 with:
                    gas gas_remaining wei
                   args stor9[idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_65]
            require mem[_65] == mem[_65]
            if mem[_65] > 0:
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = 9
                _73 = mem[64]
                mem[mem[64]] = 0xe1853af600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 96
                _75 = mem[96]
                mem[mem[64] + 100] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 132
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 36] = _67
                mem[_73 + 68] = stor9[idx].field_0
                require ext_code.size(stor9[idx].field_0)
                call stor9[idx].field_0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _73 + (32 * _75) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_02c41485(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == bool(arg7)
    if stor6 != msg.sender:
        require msg.sender == stor7
        mem[0] = msg.sender
        mem[32] = 5
        stor5[address(msg.sender)] = 1
        if address(arg1) == stor4:
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _405 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _433 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _433:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _405 + (32 * _433) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _819 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _823 = mem[_819]
                    require mem[_819] <= test266151307()
                    require _819 + mem[_819] + 31 < _819 + return_data.size
                    _827 = mem[_819 + mem[_819]]
                    if mem[_819 + mem[_819]] > test266151307():
                        revert with 'NH{q', 65
                    if _819 + ceil32(return_data.size) + (32 * mem[_819 + mem[_819]]) + 32 > test266151307() or (32 * mem[_819 + mem[_819]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _819 + ceil32(return_data.size) + (32 * mem[_819 + mem[_819]]) + 32
                    mem[_819 + ceil32(return_data.size)] = _827
                    require _823 + (32 * _827) + 32 <= return_data.size
                    s = 0
                    t = _819 + _823 + 32
                    u = _819 + ceil32(return_data.size) + 32
                    while s < _827:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _827:
                        revert with 'NH{q', 50
                    if mem[_819 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_819 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_819 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _827:
                            revert with 'NH{q', 50
                        if mem[_819 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _827:
                                revert with 'NH{q', 50
                            _1239 = mem[_819 + ceil32(return_data.size) + 32]
                            if mem[_819 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_819 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _827:
                                revert with 'NH{q', 50
                            _1258 = mem[_819 + ceil32(return_data.size) + 32]
                            _1259 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1271 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1271:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1259 + 36] = arg4
                            mem[_1259 + 68] = _1258
                            mem[_1259 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1239 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1259 + (32 * _1271) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 'NH{q', 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _423 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require mem[288 len 4], 232830 + 319 < return_data.size + 288
                _435 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307() or (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require _423 + (32 * _435) + 32 <= return_data.size
                idx = 0
                s = _423 + 320
                t = ceil32(return_data.size) + 320
                while idx < _435:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1279 = mem[_1267]
                require mem[_1267] == mem[_1267]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1279
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1279, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1587 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1595 = mem[_1587]
                require mem[_1587] <= test266151307()
                require _1587 + mem[_1587] + 31 < _1587 + return_data.size
                _1603 = mem[_1587 + mem[_1587]]
                if mem[_1587 + mem[_1587]] > test266151307():
                    revert with 'NH{q', 65
                if _1587 + ceil32(return_data.size) + (32 * mem[_1587 + mem[_1587]]) + 32 > test266151307() or (32 * mem[_1587 + mem[_1587]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1587 + ceil32(return_data.size) + (32 * mem[_1587 + mem[_1587]]) + 32
                mem[_1587 + ceil32(return_data.size)] = _1603
                require _1595 + (32 * _1603) + 32 <= return_data.size
                idx = 0
                s = _1587 + _1595 + 32
                t = _1587 + ceil32(return_data.size) + 32
                while idx < _1603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 'NH{q', 50
                if _1279 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1279 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1998 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1998))
                call address(_1998).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2023 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2023] == bool(mem[_2023])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _2039 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1279
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2047 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < _2047:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2039 + 100] = stor8
                mem[_2039 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2039 + (32 * _2047) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1587 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1587 + ceil32(return_data.size)] - 1 >= mem[_1587 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1587 + ceil32(return_data.size)] - 1) + _1587 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2535 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * _2535) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2711 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2719 = mem[_2711]
                    require mem[_2711] <= test266151307()
                    require _2711 + mem[_2711] + 31 < _2711 + return_data.size
                    _2727 = mem[_2711 + mem[_2711]]
                    if mem[_2711 + mem[_2711]] > test266151307():
                        revert with 'NH{q', 65
                    if _2711 + ceil32(return_data.size) + (32 * mem[_2711 + mem[_2711]]) + 32 > test266151307() or (32 * mem[_2711 + mem[_2711]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2711 + ceil32(return_data.size) + (32 * mem[_2711 + mem[_2711]]) + 32
                    mem[_2711 + ceil32(return_data.size)] = _2727
                    require _2719 + (32 * _2727) + 32 <= return_data.size
                    s = 0
                    t = _2711 + _2719 + 32
                    u = _2711 + ceil32(return_data.size) + 32
                    while s < _2727:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2727:
                        revert with 'NH{q', 50
                    if mem[_2711 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2711 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2711 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2727:
                            revert with 'NH{q', 50
                        if mem[_2711 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2727:
                                revert with 'NH{q', 50
                            _2895 = mem[_2711 + ceil32(return_data.size) + 32]
                            if mem[_2711 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2711 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2727:
                                revert with 'NH{q', 50
                            _2918 = mem[_2711 + ceil32(return_data.size) + 32]
                            _2919 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2927 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2927:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2919 + 36] = arg4
                            mem[_2919 + 68] = _2918
                            mem[_2919 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2895 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2919 + (32 * _2927) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _402 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _430 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _430:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _402 + (32 * _430) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _818 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _822 = mem[_818]
                    require mem[_818] <= test266151307()
                    require _818 + mem[_818] + 31 < _818 + return_data.size
                    _826 = mem[_818 + mem[_818]]
                    if mem[_818 + mem[_818]] > test266151307():
                        revert with 'NH{q', 65
                    if _818 + ceil32(return_data.size) + (32 * mem[_818 + mem[_818]]) + 32 > test266151307() or (32 * mem[_818 + mem[_818]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _818 + ceil32(return_data.size) + (32 * mem[_818 + mem[_818]]) + 32
                    mem[_818 + ceil32(return_data.size)] = _826
                    require _822 + (32 * _826) + 32 <= return_data.size
                    s = 0
                    t = _818 + _822 + 32
                    u = _818 + ceil32(return_data.size) + 32
                    while s < _826:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _826:
                        revert with 'NH{q', 50
                    if mem[_818 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_818 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_818 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _826:
                            revert with 'NH{q', 50
                        if mem[_818 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _826:
                                revert with 'NH{q', 50
                            _1238 = mem[_818 + ceil32(return_data.size) + 32]
                            if mem[_818 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_818 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _826:
                                revert with 'NH{q', 50
                            _1256 = mem[_818 + ceil32(return_data.size) + 32]
                            _1257 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1270 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1270:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1257 + 36] = arg4
                            mem[_1257 + 68] = _1256
                            mem[_1257 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1238 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1257 + (32 * _1270) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 'NH{q', 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _421 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require mem[320 len 4], 232830 + 351 < return_data.size + 320
                _432 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307() or (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require _421 + (32 * _432) + 32 <= return_data.size
                idx = 0
                s = _421 + 352
                t = ceil32(return_data.size) + 352
                while idx < _432:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1277 = mem[_1265]
                require mem[_1265] == mem[_1265]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1277
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1277, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1585 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1593 = mem[_1585]
                require mem[_1585] <= test266151307()
                require _1585 + mem[_1585] + 31 < _1585 + return_data.size
                _1601 = mem[_1585 + mem[_1585]]
                if mem[_1585 + mem[_1585]] > test266151307():
                    revert with 'NH{q', 65
                if _1585 + ceil32(return_data.size) + (32 * mem[_1585 + mem[_1585]]) + 32 > test266151307() or (32 * mem[_1585 + mem[_1585]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1585 + ceil32(return_data.size) + (32 * mem[_1585 + mem[_1585]]) + 32
                mem[_1585 + ceil32(return_data.size)] = _1601
                require _1593 + (32 * _1601) + 32 <= return_data.size
                idx = 0
                s = _1585 + _1593 + 32
                t = _1585 + ceil32(return_data.size) + 32
                while idx < _1601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if _1277 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1277 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1994 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1994))
                call address(_1994).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2021] == bool(mem[_2021])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _2037 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1277
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2045 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < _2045:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2037 + 100] = stor8
                mem[_2037 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2037 + (32 * _2045) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1585 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1585 + ceil32(return_data.size)] - 1 >= mem[_1585 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1585 + ceil32(return_data.size)] - 1) + _1585 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2525 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2533 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2533:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2525 + (32 * _2533) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2709 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2717 = mem[_2709]
                    require mem[_2709] <= test266151307()
                    require _2709 + mem[_2709] + 31 < _2709 + return_data.size
                    _2725 = mem[_2709 + mem[_2709]]
                    if mem[_2709 + mem[_2709]] > test266151307():
                        revert with 'NH{q', 65
                    if _2709 + ceil32(return_data.size) + (32 * mem[_2709 + mem[_2709]]) + 32 > test266151307() or (32 * mem[_2709 + mem[_2709]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2709 + ceil32(return_data.size) + (32 * mem[_2709 + mem[_2709]]) + 32
                    mem[_2709 + ceil32(return_data.size)] = _2725
                    require _2717 + (32 * _2725) + 32 <= return_data.size
                    s = 0
                    t = _2709 + _2717 + 32
                    u = _2709 + ceil32(return_data.size) + 32
                    while s < _2725:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2725:
                        revert with 'NH{q', 50
                    if mem[_2709 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2709 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2709 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2725:
                            revert with 'NH{q', 50
                        if mem[_2709 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2725:
                                revert with 'NH{q', 50
                            _2893 = mem[_2709 + ceil32(return_data.size) + 32]
                            if mem[_2709 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2709 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2725:
                                revert with 'NH{q', 50
                            _2914 = mem[_2709 + ceil32(return_data.size) + 32]
                            _2915 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2925 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2925:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2915 + 36] = arg4
                            mem[_2915 + 68] = _2914
                            mem[_2915 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2893 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2915 + (32 * _2925) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    else:
        mem[0] = msg.sender
        mem[32] = 5
        stor5[address(msg.sender)] = 1
        if address(arg1) != stor4:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor4
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _396 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _424 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _424:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _396 + (32 * _424) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _816 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _820 = mem[_816]
                    require mem[_816] <= test266151307()
                    require _816 + mem[_816] + 31 < _816 + return_data.size
                    _824 = mem[_816 + mem[_816]]
                    if mem[_816 + mem[_816]] > test266151307():
                        revert with 'NH{q', 65
                    if _816 + ceil32(return_data.size) + (32 * mem[_816 + mem[_816]]) + 32 > test266151307() or (32 * mem[_816 + mem[_816]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _816 + ceil32(return_data.size) + (32 * mem[_816 + mem[_816]]) + 32
                    mem[_816 + ceil32(return_data.size)] = _824
                    require _820 + (32 * _824) + 32 <= return_data.size
                    s = 0
                    t = _816 + _820 + 32
                    u = _816 + ceil32(return_data.size) + 32
                    while s < _824:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _824:
                        revert with 'NH{q', 50
                    if mem[_816 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_816 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_816 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _824:
                            revert with 'NH{q', 50
                        if mem[_816 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _824:
                                revert with 'NH{q', 50
                            _1236 = mem[_816 + ceil32(return_data.size) + 32]
                            if mem[_816 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_816 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _824:
                                revert with 'NH{q', 50
                            _1252 = mem[_816 + ceil32(return_data.size) + 32]
                            _1253 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1268 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1268:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1253 + 36] = arg4
                            mem[_1253 + 68] = _1252
                            mem[_1253 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1236 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1253 + (32 * _1268) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 'NH{q', 50
                mem[224] = 2
                mem[256] = address(arg1)
                mem[288] = stor4
                mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[324] = 10^15
                mem[356] = 64
                mem[388] = 3
                idx = 0
                s = 128
                t = 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 320
                require return_data.size >= 32
                _417 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require mem[320 len 4], 232830 + 351 < return_data.size + 320
                _426 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352 > test266151307() or (32 * mem[mem[320 len 4], 232830 + 320]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[320 len 4], 232830 + 320]) + 352
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require _417 + (32 * _426) + 32 <= return_data.size
                idx = 0
                s = _417 + 352
                t = ceil32(return_data.size) + 352
                while idx < _426:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1273 = mem[_1261]
                require mem[_1261] == mem[_1261]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1273
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 2
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _1273, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1581 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1589 = mem[_1581]
                require mem[_1581] <= test266151307()
                require _1581 + mem[_1581] + 31 < _1581 + return_data.size
                _1597 = mem[_1581 + mem[_1581]]
                if mem[_1581 + mem[_1581]] > test266151307():
                    revert with 'NH{q', 65
                if _1581 + ceil32(return_data.size) + (32 * mem[_1581 + mem[_1581]]) + 32 > test266151307() or (32 * mem[_1581 + mem[_1581]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1581 + ceil32(return_data.size) + (32 * mem[_1581 + mem[_1581]]) + 32
                mem[_1581 + ceil32(return_data.size)] = _1597
                require _1589 + (32 * _1597) + 32 <= return_data.size
                idx = 0
                s = _1581 + _1589 + 32
                t = _1581 + ceil32(return_data.size) + 32
                while idx < _1597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if _1273 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1273 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1986 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1986))
                call address(_1986).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2017 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2017] == bool(mem[_2017])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1273
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2041 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < mem[224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = stor8
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _1273, 0, 160, stor8, block.timestamp + 15, mem[mem[64] + 164 len (32 * _2041) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1581 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1581 + ceil32(return_data.size)] - 1 >= mem[_1581 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1581 + ceil32(return_data.size)] - 1) + _1581 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2521 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2529 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2529:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2521 + (32 * _2529) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2705 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2713 = mem[_2705]
                    require mem[_2705] <= test266151307()
                    require _2705 + mem[_2705] + 31 < _2705 + return_data.size
                    _2721 = mem[_2705 + mem[_2705]]
                    if mem[_2705 + mem[_2705]] > test266151307():
                        revert with 'NH{q', 65
                    if _2705 + ceil32(return_data.size) + (32 * mem[_2705 + mem[_2705]]) + 32 > test266151307() or (32 * mem[_2705 + mem[_2705]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2705 + ceil32(return_data.size) + (32 * mem[_2705 + mem[_2705]]) + 32
                    mem[_2705 + ceil32(return_data.size)] = _2721
                    require _2713 + (32 * _2721) + 32 <= return_data.size
                    s = 0
                    t = _2705 + _2713 + 32
                    u = _2705 + ceil32(return_data.size) + 32
                    while s < _2721:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2721:
                        revert with 'NH{q', 50
                    if mem[_2705 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2705 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2705 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2721:
                            revert with 'NH{q', 50
                        if mem[_2705 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2721:
                                revert with 'NH{q', 50
                            _2889 = mem[_2705 + ceil32(return_data.size) + 32]
                            if mem[_2705 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2705 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2721:
                                revert with 'NH{q', 50
                            _2906 = mem[_2705 + ceil32(return_data.size) + 32]
                            _2907 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2921 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2921:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2907 + 36] = arg4
                            mem[_2907 + 68] = _2906
                            mem[_2907 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2889 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2907 + (32 * _2921) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            mem[96] = 2
            mem[64] = 192
            mem[128] = stor4
            mem[160] = address(arg2)
            if not arg7:
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _399 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _427 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _427:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _399 + (32 * _427) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _817 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _821 = mem[_817]
                    require mem[_817] <= test266151307()
                    require _817 + mem[_817] + 31 < _817 + return_data.size
                    _825 = mem[_817 + mem[_817]]
                    if mem[_817 + mem[_817]] > test266151307():
                        revert with 'NH{q', 65
                    if _817 + ceil32(return_data.size) + (32 * mem[_817 + mem[_817]]) + 32 > test266151307() or (32 * mem[_817 + mem[_817]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _817 + ceil32(return_data.size) + (32 * mem[_817 + mem[_817]]) + 32
                    mem[_817 + ceil32(return_data.size)] = _825
                    require _821 + (32 * _825) + 32 <= return_data.size
                    s = 0
                    t = _817 + _821 + 32
                    u = _817 + ceil32(return_data.size) + 32
                    while s < _825:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _825:
                        revert with 'NH{q', 50
                    if mem[_817 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_817 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_817 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _825:
                            revert with 'NH{q', 50
                        if mem[_817 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _825:
                                revert with 'NH{q', 50
                            _1237 = mem[_817 + ceil32(return_data.size) + 32]
                            if mem[_817 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_817 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _825:
                                revert with 'NH{q', 50
                            _1254 = mem[_817 + ceil32(return_data.size) + 32]
                            _1255 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1269 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1269:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1255 + 36] = arg4
                            mem[_1255 + 68] = _1254
                            mem[_1255 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1237 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1255 + (32 * _1269) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor4 != stor4:
                    revert with 'NH{q', 50
                mem[192] = 2
                mem[224] = address(arg2)
                mem[256] = stor4
                mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[292] = 10^15
                mem[324] = 64
                mem[356] = 2
                idx = 0
                s = 128
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _419 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require mem[288 len 4], 232830 + 319 < return_data.size + 288
                _429 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320 > test266151307() or (32 * mem[mem[288 len 4], 232830 + 288]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], 232830 + 288]) + 320
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require _419 + (32 * _429) + 32 <= return_data.size
                idx = 0
                s = _419 + 320
                t = ceil32(return_data.size) + 320
                while idx < _429:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _831 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_831 + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _831 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1224 = mem[160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1224))
                staticcall address(_1224).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1275 = mem[_1263]
                require mem[_1263] == mem[_1263]
                _1287 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1275
                mem[mem[64] + 36] = 64
                _1295 = mem[192]
                mem[mem[64] + 68] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 100
                while idx < _1295:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1287 + (32 * _1295) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1583 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1591 = mem[_1583]
                require mem[_1583] <= test266151307()
                require _1583 + mem[_1583] + 31 < _1583 + return_data.size
                _1599 = mem[_1583 + mem[_1583]]
                if mem[_1583 + mem[_1583]] > test266151307():
                    revert with 'NH{q', 65
                if _1583 + ceil32(return_data.size) + (32 * mem[_1583 + mem[_1583]]) + 32 > test266151307() or (32 * mem[_1583 + mem[_1583]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1583 + ceil32(return_data.size) + (32 * mem[_1583 + mem[_1583]]) + 32
                mem[_1583 + ceil32(return_data.size)] = _1599
                require _1591 + (32 * _1599) + 32 <= return_data.size
                idx = 0
                s = _1583 + _1591 + 32
                t = _1583 + ceil32(return_data.size) + 32
                while idx < _1599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 'NH{q', 50
                if _1275 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1275 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1990 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1990))
                call address(_1990).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2019 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2019] == bool(mem[_2019])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _2035 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1275
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _2043 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < _2043:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2035 + 100] = stor8
                mem[_2035 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2035 + (32 * _2043) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1583 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1583 + ceil32(return_data.size)] - 1 >= mem[_1583 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1583 + ceil32(return_data.size)] - 1) + _1583 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2523 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2531 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2531:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2523 + (32 * _2531) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2707 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2715 = mem[_2707]
                    require mem[_2707] <= test266151307()
                    require _2707 + mem[_2707] + 31 < _2707 + return_data.size
                    _2723 = mem[_2707 + mem[_2707]]
                    if mem[_2707 + mem[_2707]] > test266151307():
                        revert with 'NH{q', 65
                    if _2707 + ceil32(return_data.size) + (32 * mem[_2707 + mem[_2707]]) + 32 > test266151307() or (32 * mem[_2707 + mem[_2707]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2707 + ceil32(return_data.size) + (32 * mem[_2707 + mem[_2707]]) + 32
                    mem[_2707 + ceil32(return_data.size)] = _2723
                    require _2715 + (32 * _2723) + 32 <= return_data.size
                    s = 0
                    t = _2707 + _2715 + 32
                    u = _2707 + ceil32(return_data.size) + 32
                    while s < _2723:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2723:
                        revert with 'NH{q', 50
                    if mem[_2707 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2707 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2707 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2723:
                            revert with 'NH{q', 50
                        if mem[_2707 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2723:
                                revert with 'NH{q', 50
                            _2891 = mem[_2707 + ceil32(return_data.size) + 32]
                            if mem[_2707 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2707 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2723:
                                revert with 'NH{q', 50
                            _2910 = mem[_2707 + ceil32(return_data.size) + 32]
                            _2911 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2923 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2923:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2911 + 36] = arg4
                            mem[_2911 + 68] = _2910
                            mem[_2911 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2891 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2911 + (32 * _2923) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
}



}
