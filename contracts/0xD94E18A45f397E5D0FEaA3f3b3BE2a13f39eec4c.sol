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
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
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
        mem[floor32(('cd', 36).length) + 101] = address(cd[4])
        require ext_code.size(address(_23))
        staticcall address(_23).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
    else:
        require msg.sender == stor7
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _26 = mem[128]
        mem[floor32(('cd', 36).length) + 101] = address(cd[4])
        require ext_code.size(address(_26))
        staticcall address(_26).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= cd[68]:
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = 0xe1853af600000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = 96
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 197] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + ceil32(return_data.size) + 229
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xe1853af6 with:
             gas gas_remaining wei
            args Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 229 len 32 * ('cd', 36).length]), cd[68], address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_9b4a29a3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
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
                while s < _75:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_73 + 36] = _67
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
                    _384 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _412 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _412:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _384 + (32 * _412) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _782 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _786 = mem[_782]
                    require mem[_782] <= test266151307()
                    require _782 + mem[_782] + 31 < _782 + return_data.size
                    _790 = mem[_782 + mem[_782]]
                    if mem[_782 + mem[_782]] > test266151307():
                        revert with 'NH{q', 65
                    if _782 + ceil32(return_data.size) + floor32(mem[_782 + mem[_782]]) + 1 > test266151307() or floor32(mem[_782 + mem[_782]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _782 + ceil32(return_data.size) + floor32(mem[_782 + mem[_782]]) + 1
                    mem[_782 + ceil32(return_data.size)] = _790
                    require _786 + (32 * _790) + 32 <= return_data.size
                    s = 0
                    t = _782 + _786 + 32
                    u = _782 + ceil32(return_data.size) + 32
                    while s < _790:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _790:
                        revert with 'NH{q', 50
                    if mem[_782 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_782 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_782 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _790:
                            revert with 'NH{q', 50
                        if mem[_782 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _790:
                                revert with 'NH{q', 50
                            _1202 = mem[_782 + ceil32(return_data.size) + 32]
                            if mem[_782 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_782 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _790:
                                revert with 'NH{q', 50
                            _1221 = mem[_782 + ceil32(return_data.size) + 32]
                            _1222 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1234 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1234:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1222 + 36] = arg4
                            mem[_1222 + 68] = _1221
                            mem[_1222 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1202 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1222 + (32 * _1234) + -mem[64] + 160]
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
                _402 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require mem[288 len 4], 232830 + 319 < return_data.size + 288
                _414 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[288 len 4], 232830 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], 232830 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], 232830 + 288]) + 289
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require _402 + (32 * _414) + 32 <= return_data.size
                idx = 0
                s = _402 + 320
                t = ceil32(return_data.size) + 320
                while idx < _414:
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
                _1230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1242 = mem[_1230]
                require mem[_1230] == mem[_1230]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1242
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
                       args _1242, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1526 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1534 = mem[_1526]
                require mem[_1526] <= test266151307()
                require _1526 + mem[_1526] + 31 < _1526 + return_data.size
                _1542 = mem[_1526 + mem[_1526]]
                if mem[_1526 + mem[_1526]] > test266151307():
                    revert with 'NH{q', 65
                if _1526 + ceil32(return_data.size) + floor32(mem[_1526 + mem[_1526]]) + 1 > test266151307() or floor32(mem[_1526 + mem[_1526]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1526 + ceil32(return_data.size) + floor32(mem[_1526 + mem[_1526]]) + 1
                mem[_1526 + ceil32(return_data.size)] = _1542
                require _1534 + (32 * _1542) + 32 <= return_data.size
                idx = 0
                s = _1526 + _1534 + 32
                t = _1526 + ceil32(return_data.size) + 32
                while idx < _1542:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 'NH{q', 50
                if _1242 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1242 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1905 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1905))
                call address(_1905).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1930 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1930] == bool(mem[_1930])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _1946 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1242
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1954 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < _1954:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1946 + 100] = stor8
                mem[_1946 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1946 + (32 * _1954) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1526 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1526 + ceil32(return_data.size)] - 1 >= mem[_1526 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1526 + ceil32(return_data.size)] - 1) + _1526 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2426 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2434 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2434:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2426 + (32 * _2434) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2610 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2618 = mem[_2610]
                    require mem[_2610] <= test266151307()
                    require _2610 + mem[_2610] + 31 < _2610 + return_data.size
                    _2626 = mem[_2610 + mem[_2610]]
                    if mem[_2610 + mem[_2610]] > test266151307():
                        revert with 'NH{q', 65
                    if _2610 + ceil32(return_data.size) + floor32(mem[_2610 + mem[_2610]]) + 1 > test266151307() or floor32(mem[_2610 + mem[_2610]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2610 + ceil32(return_data.size) + floor32(mem[_2610 + mem[_2610]]) + 1
                    mem[_2610 + ceil32(return_data.size)] = _2626
                    require _2618 + (32 * _2626) + 32 <= return_data.size
                    s = 0
                    t = _2610 + _2618 + 32
                    u = _2610 + ceil32(return_data.size) + 32
                    while s < _2626:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2626:
                        revert with 'NH{q', 50
                    if mem[_2610 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2610 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2610 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2626:
                            revert with 'NH{q', 50
                        if mem[_2610 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2626:
                                revert with 'NH{q', 50
                            _2794 = mem[_2610 + ceil32(return_data.size) + 32]
                            if mem[_2610 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2610 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2626:
                                revert with 'NH{q', 50
                            _2817 = mem[_2610 + ceil32(return_data.size) + 32]
                            _2818 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2826 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2826:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2818 + 36] = arg4
                            mem[_2818 + 68] = _2817
                            mem[_2818 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2794 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2818 + (32 * _2826) + -mem[64] + 160]
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
                    _381 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _409 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _409:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _381 + (32 * _409) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _781 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _785 = mem[_781]
                    require mem[_781] <= test266151307()
                    require _781 + mem[_781] + 31 < _781 + return_data.size
                    _789 = mem[_781 + mem[_781]]
                    if mem[_781 + mem[_781]] > test266151307():
                        revert with 'NH{q', 65
                    if _781 + ceil32(return_data.size) + floor32(mem[_781 + mem[_781]]) + 1 > test266151307() or floor32(mem[_781 + mem[_781]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _781 + ceil32(return_data.size) + floor32(mem[_781 + mem[_781]]) + 1
                    mem[_781 + ceil32(return_data.size)] = _789
                    require _785 + (32 * _789) + 32 <= return_data.size
                    s = 0
                    t = _781 + _785 + 32
                    u = _781 + ceil32(return_data.size) + 32
                    while s < _789:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _789:
                        revert with 'NH{q', 50
                    if mem[_781 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_781 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_781 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _789:
                            revert with 'NH{q', 50
                        if mem[_781 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _789:
                                revert with 'NH{q', 50
                            _1201 = mem[_781 + ceil32(return_data.size) + 32]
                            if mem[_781 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_781 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _789:
                                revert with 'NH{q', 50
                            _1219 = mem[_781 + ceil32(return_data.size) + 32]
                            _1220 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1233 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1233:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1220 + 36] = arg4
                            mem[_1220 + 68] = _1219
                            mem[_1220 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1201 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1220 + (32 * _1233) + -mem[64] + 160]
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
                _400 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require mem[320 len 4], 232830 + 351 < return_data.size + 320
                _411 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[320 len 4], 232830 + 320]) + 321 > test266151307() or floor32(mem[mem[320 len 4], 232830 + 320]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[320 len 4], 232830 + 320]) + 321
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require _400 + (32 * _411) + 32 <= return_data.size
                idx = 0
                s = _400 + 352
                t = ceil32(return_data.size) + 352
                while idx < _411:
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
                _1228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1240 = mem[_1228]
                require mem[_1228] == mem[_1228]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1240
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
                       args _1240, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1524 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1532 = mem[_1524]
                require mem[_1524] <= test266151307()
                require _1524 + mem[_1524] + 31 < _1524 + return_data.size
                _1540 = mem[_1524 + mem[_1524]]
                if mem[_1524 + mem[_1524]] > test266151307():
                    revert with 'NH{q', 65
                if _1524 + ceil32(return_data.size) + floor32(mem[_1524 + mem[_1524]]) + 1 > test266151307() or floor32(mem[_1524 + mem[_1524]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1524 + ceil32(return_data.size) + floor32(mem[_1524 + mem[_1524]]) + 1
                mem[_1524 + ceil32(return_data.size)] = _1540
                require _1532 + (32 * _1540) + 32 <= return_data.size
                idx = 0
                s = _1524 + _1532 + 32
                t = _1524 + ceil32(return_data.size) + 32
                while idx < _1540:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if _1240 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1240 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1901 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1901))
                call address(_1901).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1928] == bool(mem[_1928])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _1944 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1240
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1952 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < _1952:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1944 + 100] = stor8
                mem[_1944 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1944 + (32 * _1952) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1524 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1524 + ceil32(return_data.size)] - 1 >= mem[_1524 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1524 + ceil32(return_data.size)] - 1) + _1524 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2424 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2432 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2432:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2424 + (32 * _2432) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2608 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2616 = mem[_2608]
                    require mem[_2608] <= test266151307()
                    require _2608 + mem[_2608] + 31 < _2608 + return_data.size
                    _2624 = mem[_2608 + mem[_2608]]
                    if mem[_2608 + mem[_2608]] > test266151307():
                        revert with 'NH{q', 65
                    if _2608 + ceil32(return_data.size) + floor32(mem[_2608 + mem[_2608]]) + 1 > test266151307() or floor32(mem[_2608 + mem[_2608]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2608 + ceil32(return_data.size) + floor32(mem[_2608 + mem[_2608]]) + 1
                    mem[_2608 + ceil32(return_data.size)] = _2624
                    require _2616 + (32 * _2624) + 32 <= return_data.size
                    s = 0
                    t = _2608 + _2616 + 32
                    u = _2608 + ceil32(return_data.size) + 32
                    while s < _2624:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2624:
                        revert with 'NH{q', 50
                    if mem[_2608 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2608 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2608 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2624:
                            revert with 'NH{q', 50
                        if mem[_2608 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2624:
                                revert with 'NH{q', 50
                            _2792 = mem[_2608 + ceil32(return_data.size) + 32]
                            if mem[_2608 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2608 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2624:
                                revert with 'NH{q', 50
                            _2813 = mem[_2608 + ceil32(return_data.size) + 32]
                            _2814 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2824 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2824:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2814 + 36] = arg4
                            mem[_2814 + 68] = _2813
                            mem[_2814 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2792 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2814 + (32 * _2824) + -mem[64] + 160]
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
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _406 = mem[96]
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
                           args mem[mem[64] + 4 len (32 * _406) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _780 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _784 = mem[_780]
                    require mem[_780] <= test266151307()
                    require _780 + mem[_780] + 31 < _780 + return_data.size
                    _788 = mem[_780 + mem[_780]]
                    if mem[_780 + mem[_780]] > test266151307():
                        revert with 'NH{q', 65
                    if _780 + ceil32(return_data.size) + floor32(mem[_780 + mem[_780]]) + 1 > test266151307() or floor32(mem[_780 + mem[_780]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _780 + ceil32(return_data.size) + floor32(mem[_780 + mem[_780]]) + 1
                    mem[_780 + ceil32(return_data.size)] = _788
                    require _784 + (32 * _788) + 32 <= return_data.size
                    s = 0
                    t = _780 + _784 + 32
                    u = _780 + ceil32(return_data.size) + 32
                    while s < _788:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _788:
                        revert with 'NH{q', 50
                    if mem[_780 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_780 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_780 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _788:
                            revert with 'NH{q', 50
                        if mem[_780 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _788:
                                revert with 'NH{q', 50
                            _1200 = mem[_780 + ceil32(return_data.size) + 32]
                            if mem[_780 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_780 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _788:
                                revert with 'NH{q', 50
                            _1217 = mem[_780 + ceil32(return_data.size) + 32]
                            _1218 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1232 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1232:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1218 + 36] = arg4
                            mem[_1218 + 68] = _1217
                            mem[_1218 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1200 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1218 + (32 * _1232) + -mem[64] + 160]
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
                _398 = mem[288 len 4], 232830
                require mem[288 len 4], 232830 <= test266151307()
                require mem[288 len 4], 232830 + 319 < return_data.size + 288
                _408 = mem[mem[288 len 4], 232830 + 288]
                if mem[mem[288 len 4], 232830 + 288] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[288 len 4], 232830 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], 232830 + 288]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], 232830 + 288]) + 289
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 232830 + 288]
                require _398 + (32 * _408) + 32 <= return_data.size
                idx = 0
                s = _398 + 320
                t = ceil32(return_data.size) + 320
                while idx < _408:
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
                _1226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1238 = mem[_1226]
                require mem[_1226] == mem[_1226]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1238
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
                       args _1238, Array(len=2, data=mem[mem[64] + 100 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1522 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1530 = mem[_1522]
                require mem[_1522] <= test266151307()
                require _1522 + mem[_1522] + 31 < _1522 + return_data.size
                _1538 = mem[_1522 + mem[_1522]]
                if mem[_1522 + mem[_1522]] > test266151307():
                    revert with 'NH{q', 65
                if _1522 + ceil32(return_data.size) + floor32(mem[_1522 + mem[_1522]]) + 1 > test266151307() or floor32(mem[_1522 + mem[_1522]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1522 + ceil32(return_data.size) + floor32(mem[_1522 + mem[_1522]]) + 1
                mem[_1522 + ceil32(return_data.size)] = _1538
                require _1530 + (32 * _1538) + 32 <= return_data.size
                idx = 0
                s = _1522 + _1530 + 32
                t = _1522 + ceil32(return_data.size) + 32
                while idx < _1538:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 288]:
                    revert with 'NH{q', 50
                if _1238 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1238 < mem[ceil32(return_data.size) + 352]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1897 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1897))
                call address(_1897).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1926] == bool(mem[_1926])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _1942 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1238
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1950 = mem[192]
                mem[mem[64] + 164] = mem[192]
                idx = 0
                s = 224
                t = mem[64] + 196
                while idx < _1950:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1942 + 100] = stor8
                mem[_1942 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1942 + (32 * _1950) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1522 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1522 + ceil32(return_data.size)] - 1 >= mem[_1522 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1522 + ceil32(return_data.size)] - 1) + _1522 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2422 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2430 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2430:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2422 + (32 * _2430) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2606 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2614 = mem[_2606]
                    require mem[_2606] <= test266151307()
                    require _2606 + mem[_2606] + 31 < _2606 + return_data.size
                    _2622 = mem[_2606 + mem[_2606]]
                    if mem[_2606 + mem[_2606]] > test266151307():
                        revert with 'NH{q', 65
                    if _2606 + ceil32(return_data.size) + floor32(mem[_2606 + mem[_2606]]) + 1 > test266151307() or floor32(mem[_2606 + mem[_2606]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2606 + ceil32(return_data.size) + floor32(mem[_2606 + mem[_2606]]) + 1
                    mem[_2606 + ceil32(return_data.size)] = _2622
                    require _2614 + (32 * _2622) + 32 <= return_data.size
                    s = 0
                    t = _2606 + _2614 + 32
                    u = _2606 + ceil32(return_data.size) + 32
                    while s < _2622:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2622:
                        revert with 'NH{q', 50
                    if mem[_2606 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2606 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2606 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2622:
                            revert with 'NH{q', 50
                        if mem[_2606 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2622:
                                revert with 'NH{q', 50
                            _2790 = mem[_2606 + ceil32(return_data.size) + 32]
                            if mem[_2606 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2606 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2622:
                                revert with 'NH{q', 50
                            _2809 = mem[_2606 + ceil32(return_data.size) + 32]
                            _2810 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2822 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2822:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2810 + 36] = arg4
                            mem[_2810 + 68] = _2809
                            mem[_2810 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2790 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2810 + (32 * _2822) + -mem[64] + 160]
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
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _403 = mem[96]
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
                           args mem[mem[64] + 4 len (32 * _403) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _779 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _783 = mem[_779]
                    require mem[_779] <= test266151307()
                    require _779 + mem[_779] + 31 < _779 + return_data.size
                    _787 = mem[_779 + mem[_779]]
                    if mem[_779 + mem[_779]] > test266151307():
                        revert with 'NH{q', 65
                    if _779 + ceil32(return_data.size) + floor32(mem[_779 + mem[_779]]) + 1 > test266151307() or floor32(mem[_779 + mem[_779]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _779 + ceil32(return_data.size) + floor32(mem[_779 + mem[_779]]) + 1
                    mem[_779 + ceil32(return_data.size)] = _787
                    require _783 + (32 * _787) + 32 <= return_data.size
                    s = 0
                    t = _779 + _783 + 32
                    u = _779 + ceil32(return_data.size) + 32
                    while s < _787:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _787:
                        revert with 'NH{q', 50
                    if mem[_779 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_779 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_779 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _787:
                            revert with 'NH{q', 50
                        if mem[_779 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _787:
                                revert with 'NH{q', 50
                            _1199 = mem[_779 + ceil32(return_data.size) + 32]
                            if mem[_779 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_779 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _787:
                                revert with 'NH{q', 50
                            _1215 = mem[_779 + ceil32(return_data.size) + 32]
                            _1216 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _1231 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _1231:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_1216 + 36] = arg4
                            mem[_1216 + 68] = _1215
                            mem[_1216 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _1199 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1216 + (32 * _1231) + -mem[64] + 160]
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
                _396 = mem[320 len 4], 232830
                require mem[320 len 4], 232830 <= test266151307()
                require mem[320 len 4], 232830 + 351 < return_data.size + 320
                _405 = mem[mem[320 len 4], 232830 + 320]
                if mem[mem[320 len 4], 232830 + 320] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[320 len 4], 232830 + 320]) + 321 > test266151307() or floor32(mem[mem[320 len 4], 232830 + 320]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[320 len 4], 232830 + 320]) + 321
                mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], 232830 + 320]
                require _396 + (32 * _405) + 32 <= return_data.size
                idx = 0
                s = _396 + 352
                t = ceil32(return_data.size) + 352
                while idx < _405:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _792 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
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
                mem[_792 + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _792 + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1182 = mem[160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1182))
                staticcall address(_1182).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1236 = mem[_1224]
                require mem[_1224] == mem[_1224]
                _1248 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1236
                mem[mem[64] + 36] = 64
                _1256 = mem[224]
                mem[mem[64] + 68] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 100
                while idx < _1256:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                staticcall stor2.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1248 + (32 * _1256) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1520 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1528 = mem[_1520]
                require mem[_1520] <= test266151307()
                require _1520 + mem[_1520] + 31 < _1520 + return_data.size
                _1536 = mem[_1520 + mem[_1520]]
                if mem[_1520 + mem[_1520]] > test266151307():
                    revert with 'NH{q', 65
                if _1520 + ceil32(return_data.size) + floor32(mem[_1520 + mem[_1520]]) + 1 > test266151307() or floor32(mem[_1520 + mem[_1520]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1520 + ceil32(return_data.size) + floor32(mem[_1520 + mem[_1520]]) + 1
                mem[_1520 + ceil32(return_data.size)] = _1536
                require _1528 + (32 * _1536) + 32 <= return_data.size
                idx = 0
                s = _1520 + _1528 + 32
                t = _1520 + ceil32(return_data.size) + 32
                while idx < _1536:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 >= mem[ceil32(return_data.size) + 320]:
                    revert with 'NH{q', 50
                if _1236 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * _1236 < mem[ceil32(return_data.size) + 384]:
                    revert with 0, 'Buy'
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _1893 = mem[160]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_1893))
                call address(_1893).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1924 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1924] == bool(mem[_1924])
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _1940 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1236
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1948 = mem[224]
                mem[mem[64] + 164] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + 196
                while idx < _1948:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1940 + 100] = stor8
                mem[_1940 + 132] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1940 + (32 * _1948) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_1520 + ceil32(return_data.size)] < 1:
                    revert with 'NH{q', 17
                if mem[_1520 + ceil32(return_data.size)] - 1 >= mem[_1520 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if eth.balance(stor8) < eth.balance(stor8):
                    revert with 'NH{q', 17
                if 0 < mem[(32 * mem[_1520 + ceil32(return_data.size)] - 1) + _1520 + ceil32(return_data.size) + 32]:
                    revert with 0, 'Sell'
                idx = 0
                while idx < arg3:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = 9
                    _2420 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _2428 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 100
                    while s < _2428:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    staticcall stor2.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2420 + (32 * _2428) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2604 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2612 = mem[_2604]
                    require mem[_2604] <= test266151307()
                    require _2604 + mem[_2604] + 31 < _2604 + return_data.size
                    _2620 = mem[_2604 + mem[_2604]]
                    if mem[_2604 + mem[_2604]] > test266151307():
                        revert with 'NH{q', 65
                    if _2604 + ceil32(return_data.size) + floor32(mem[_2604 + mem[_2604]]) + 1 > test266151307() or floor32(mem[_2604 + mem[_2604]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2604 + ceil32(return_data.size) + floor32(mem[_2604 + mem[_2604]]) + 1
                    mem[_2604 + ceil32(return_data.size)] = _2620
                    require _2612 + (32 * _2620) + 32 <= return_data.size
                    s = 0
                    t = _2604 + _2612 + 32
                    u = _2604 + ceil32(return_data.size) + 32
                    while s < _2620:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    if 0 >= _2620:
                        revert with 'NH{q', 50
                    if mem[_2604 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2604 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    if eth.balance(this.address) > mem[_2604 + ceil32(return_data.size) + 32] * arg4:
                        if 0 >= _2620:
                            revert with 'NH{q', 50
                        if mem[_2604 + ceil32(return_data.size) + 32] < arg6:
                            if 0 >= _2620:
                                revert with 'NH{q', 50
                            _2788 = mem[_2604 + ceil32(return_data.size) + 32]
                            if mem[_2604 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[_2604 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            if 0 >= _2620:
                                revert with 'NH{q', 50
                            _2805 = mem[_2604 + ceil32(return_data.size) + 32]
                            _2806 = mem[64]
                            mem[mem[64]] = 0x6023e96600000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 128
                            _2820 = mem[96]
                            mem[mem[64] + 132] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 164
                            while s < _2820:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2806 + 36] = arg4
                            mem[_2806 + 68] = _2805
                            mem[_2806 + 100] = stor9[idx].field_0
                            require ext_code.size(stor9[idx].field_0)
                            call stor9[idx].field_0.mem[mem[64] len 4] with:
                               value _2788 * arg4 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _2806 + (32 * _2820) + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
}



}
