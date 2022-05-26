contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
address stor5;

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
    if stor3 != msg.sender:
        require msg.sender == stor5
    stor3 = arg1
}

function withdraw() {
    if stor3 != msg.sender:
        require msg.sender == stor5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_269368d7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if msg.sender == stor3:
        if not arg3:
            revert with 'NH{q', 18
        if eth.balance(this.address) <= arg4:
            revert with 0, 'Not enough balance'
        if address(arg1) == stor2:
            mem[96] = 2
            mem[64] = 192
            mem[128] = address(arg1)
            mem[160] = address(arg2)
            idx = 0
            while idx < arg3:
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _36 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                _40 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = tx.origin
                mem[_36 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value arg4 / arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _36 + (32 * _40) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor2
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            idx = 0
            while idx < arg3:
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _35 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                _39 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < _39:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_35 + 68] = tx.origin
                mem[_35 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value arg4 / arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _35 + (32 * _39) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        require msg.sender == stor5
        if not arg3:
            revert with 'NH{q', 18
        if eth.balance(this.address) <= arg4:
            revert with 0, 'Not enough balance'
        if address(arg1) == stor2:
            mem[96] = 2
            mem[64] = 192
            mem[128] = address(arg1)
            mem[160] = address(arg2)
            idx = 0
            while idx < arg3:
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _38 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                _42 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = tx.origin
                mem[_38 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value arg4 / arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _38 + (32 * _42) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor2
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            idx = 0
            while idx < arg3:
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _37 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                _41 = mem[96]
                mem[mem[64] + 132] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 164
                while s < _41:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_37 + 68] = tx.origin
                mem[_37 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value arg4 / arg3 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _37 + (32 * _41) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function sub_d9b3c963(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if msg.sender == stor3:
        if address(arg1) == stor2:
            mem[96] = 2
            mem[64] = 192
            mem[128] = address(arg1)
            mem[160] = address(arg2)
            idx = 0
            while idx < arg3:
                _84 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = 64
                _88 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _88:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _84 + (32 * _88) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _164 = mem[_160]
                require mem[_160] <= test266151307()
                require _160 + mem[_160] + 31 < _160 + return_data.size
                _168 = mem[_160 + mem[_160]]
                if mem[_160 + mem[_160]] > test266151307():
                    revert with 'NH{q', 65
                if _160 + ceil32(return_data.size) + (32 * mem[_160 + mem[_160]]) + 32 > test266151307() or (32 * mem[_160 + mem[_160]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _160 + ceil32(return_data.size) + (32 * mem[_160 + mem[_160]]) + 32
                mem[_160 + ceil32(return_data.size)] = _168
                require _164 + (32 * _168) + 32 <= return_data.size
                s = 0
                t = _160 + _164 + 32
                u = _160 + ceil32(return_data.size) + 32
                while s < _168:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if 0 >= _168:
                    revert with 'NH{q', 50
                if eth.balance(this.address) > mem[_160 + ceil32(return_data.size) + 32]:
                    if 0 >= _168:
                        revert with 'NH{q', 50
                    _228 = mem[_160 + ceil32(return_data.size) + 32]
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    _232 = mem[64]
                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    _236 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < _236:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_232 + 68] = tx.origin
                    mem[_232 + 100] = block.timestamp + 15
                    require ext_code.size(stor1)
                    call stor1.mem[mem[64] len 4] with:
                       value _228 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _232 + (32 * _236) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor2
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            idx = 0
            while idx < arg3:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = 64
                _87 = mem[96]
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
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (32 * _87) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _159 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _163 = mem[_159]
                require mem[_159] <= test266151307()
                require _159 + mem[_159] + 31 < _159 + return_data.size
                _167 = mem[_159 + mem[_159]]
                if mem[_159 + mem[_159]] > test266151307():
                    revert with 'NH{q', 65
                if _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32 > test266151307() or (32 * mem[_159 + mem[_159]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32
                mem[_159 + ceil32(return_data.size)] = _167
                require _163 + (32 * _167) + 32 <= return_data.size
                s = 0
                t = _159 + _163 + 32
                u = _159 + ceil32(return_data.size) + 32
                while s < _167:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if 0 >= _167:
                    revert with 'NH{q', 50
                if eth.balance(this.address) > mem[_159 + ceil32(return_data.size) + 32]:
                    if 0 >= _167:
                        revert with 'NH{q', 50
                    _227 = mem[_159 + ceil32(return_data.size) + 32]
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    _231 = mem[64]
                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    _235 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < _235:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_231 + 68] = tx.origin
                    mem[_231 + 100] = block.timestamp + 15
                    require ext_code.size(stor1)
                    call stor1.mem[mem[64] len 4] with:
                       value _227 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _231 + (32 * _235) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        require msg.sender == stor5
        if address(arg1) == stor2:
            mem[96] = 2
            mem[64] = 192
            mem[128] = address(arg1)
            mem[160] = address(arg2)
            idx = 0
            while idx < arg3:
                _86 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = 64
                _90 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _90:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _86 + (32 * _90) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _162 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _166 = mem[_162]
                require mem[_162] <= test266151307()
                require _162 + mem[_162] + 31 < _162 + return_data.size
                _170 = mem[_162 + mem[_162]]
                if mem[_162 + mem[_162]] > test266151307():
                    revert with 'NH{q', 65
                if _162 + ceil32(return_data.size) + (32 * mem[_162 + mem[_162]]) + 32 > test266151307() or (32 * mem[_162 + mem[_162]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _162 + ceil32(return_data.size) + (32 * mem[_162 + mem[_162]]) + 32
                mem[_162 + ceil32(return_data.size)] = _170
                require _166 + (32 * _170) + 32 <= return_data.size
                s = 0
                t = _162 + _166 + 32
                u = _162 + ceil32(return_data.size) + 32
                while s < _170:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if 0 >= _170:
                    revert with 'NH{q', 50
                if eth.balance(this.address) > mem[_162 + ceil32(return_data.size) + 32]:
                    if 0 >= _170:
                        revert with 'NH{q', 50
                    _230 = mem[_162 + ceil32(return_data.size) + 32]
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    _234 = mem[64]
                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    _238 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = tx.origin
                    mem[_234 + 100] = block.timestamp + 15
                    require ext_code.size(stor1)
                    call stor1.mem[mem[64] len 4] with:
                       value _230 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _234 + (32 * _238) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = stor2
            mem[160] = address(arg1)
            mem[192] = address(arg2)
            idx = 0
            while idx < arg3:
                _85 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg4
                mem[mem[64] + 36] = 64
                _89 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 100
                while s < _89:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _85 + (32 * _89) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _161 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _165 = mem[_161]
                require mem[_161] <= test266151307()
                require _161 + mem[_161] + 31 < _161 + return_data.size
                _169 = mem[_161 + mem[_161]]
                if mem[_161 + mem[_161]] > test266151307():
                    revert with 'NH{q', 65
                if _161 + ceil32(return_data.size) + (32 * mem[_161 + mem[_161]]) + 32 > test266151307() or (32 * mem[_161 + mem[_161]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _161 + ceil32(return_data.size) + (32 * mem[_161 + mem[_161]]) + 32
                mem[_161 + ceil32(return_data.size)] = _169
                require _165 + (32 * _169) + 32 <= return_data.size
                s = 0
                t = _161 + _165 + 32
                u = _161 + ceil32(return_data.size) + 32
                while s < _169:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if 0 >= _169:
                    revert with 'NH{q', 50
                if eth.balance(this.address) > mem[_161 + ceil32(return_data.size) + 32]:
                    if 0 >= _169:
                        revert with 'NH{q', 50
                    _229 = mem[_161 + ceil32(return_data.size) + 32]
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    _233 = mem[64]
                    mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    _237 = mem[96]
                    mem[mem[64] + 132] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 164
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = tx.origin
                    mem[_233 + 100] = block.timestamp + 15
                    require ext_code.size(stor1)
                    call stor1.mem[mem[64] len 4] with:
                       value _229 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _233 + (32 * _237) + -mem[64] + 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
