contract main {




// =====================  Runtime code  =====================


#
#  - sub_4e0dc557(?)
#  - withdrawToken(address arg1, uint256 arg2)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_c83b5ef7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Withdraw: No Permission'
    call stor0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function allowance(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4341dfa4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not address(arg1):
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        return eth.balance(arg1), 0
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return eth.balance(arg1), ext_call.return_data[0]
}

function sub_53f7d80f(?) payable {
    require calldata.size - 4 >= 64
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
    require cd[36] == cd[36]
    if ('cd', 4).length and cd[36] > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * cd[36]:
        revert with 'NH{q', 17
    if msg.value - (('cd', 4).length * cd[36]) < 0:
        revert with 0, 'Transfer: Insufficient'
    idx = 0
    s = msg.value
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _85 = mem[(32 * idx) + 128]
        _86 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        t = 0
        while t < mem[_86]:
            t = t + 32
            continue 
        if ceil32(mem[_86]) <= mem[_86]:
            call address(_85) with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _86 + mem[_86] + -mem[64] + 28]
            if return_data.size:
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_122] = return_data.size
                mem[_122 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_86 + mem[_86] + 32] = 0
            call address(_85) with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _86 + mem[_86] + -mem[64] + 28]
            if return_data.size:
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_125] = return_data.size
                mem[_125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
        if s < cd[36]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s - cd[36]
        continue 
    _82 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    if ceil32(mem[_82]) > mem[_82]:
        mem[_82 + mem[_82] + 32] = 0
    call msg.sender with:
       value s wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _82 + mem[_82] + -mem[64] + 28]
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function sub_bb1e96a3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _48 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_48] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_48 + 32] = cd[(s + 32)]
        mem[t] = _48
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if msg.value < cd[36]:
        revert with 'NH{q', 17
    if msg.value - cd[36] < 0:
        revert with 0, 'Transfer: Insufficient'
    _49 = mem[96]
    idx = 0
    s = msg.value
    while idx < _49:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _95 = mem[(32 * idx) + 128]
        if not mem[mem[(32 * idx) + 128] + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if mem[mem[(32 * idx) + 128] + 32] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        _100 = mem[mem[(32 * idx) + 128]]
        _101 = mem[mem[(32 * idx) + 128] + 32]
        _103 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        t = 0
        while t < mem[_103]:
            t = t + 32
            continue 
        if ceil32(mem[_103]) <= mem[_103]:
            call address(_100) with:
               value _101 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _103 + mem[_103] + -mem[64] + 28]
            if return_data.size:
                _142 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_142] = return_data.size
                mem[_142 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_103 + mem[_103] + 32] = 0
            call address(_100) with:
               value _101 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _103 + mem[_103] + -mem[64] + 28]
            if return_data.size:
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_145] = return_data.size
                mem[_145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
        if s < mem[_95 + 32]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s - mem[_95 + 32]
        continue 
    _97 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    if ceil32(mem[_97]) > mem[_97]:
        mem[_97 + mem[_97] + 32] = 0
    call msg.sender with:
       value s wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _97 + mem[_97] + -mem[64] + 28]
    if not ext_call.success:
        revert with 0, 'TransferHelper: ETH_TRANSFER_FAILED'
}

function sub_92da13f0(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    mem[floor32(('cd', 4).length) + 101] = msg.sender
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 4).length and cd[68] > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < ('cd', 4).length * cd[68]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (('cd', 4).length * cd[68]) < 0:
        revert with 0, 'Transfer: Insufficient'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _103 = mem[(32 * idx) + 128]
            _104 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_103)
            mem[mem[64] + 100] = cd[68]
            _105 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_105 + 32] = mem[_105 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            _108 = mem[_105]
            s = 0
            while s < _108:
                mem[_104 + s + 132] = mem[_105 + s + 32]
                s = s + 32
                continue 
            if ceil32(_108) <= _108:
                call address(cd[36]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _104 + _108 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                else:
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_144] = return_data.size
                    mem[_144 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_144 + 32] == bool(mem[_144 + 32])
                        if not mem[_144 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            else:
                mem[_104 + _108 + 132] = 0
                call address(cd[36]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _104 + _108 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                else:
                    _146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_146] = return_data.size
                    mem[_146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_146 + 32] == bool(mem[_146 + 32])
                        if not mem[_146 + 32]:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getBalances(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            _88 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_88] = mem[(32 * idx) + 140 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_88 + 32] = eth.balance(mem[(32 * idx) + 128])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _97 = mem[(32 * idx) + 128]
            if not arg2:
                mem[_88 + 64] = 0
            else:
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_97)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _116 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_116] == mem[_116]
                mem[_88 + 64] = mem[_116]
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _88
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _91 = mem[64]
        mem[mem[64]] = 32
        _95 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _95:
            _130 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_130 + 32]
            mem[t + 64] = mem[_130 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _91 + (96 * _95) + -mem[64] + 64
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 225
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
    mem[var43001] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = var43001
    idx = var43002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        _155 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_155] = mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_155 + 32] = eth.balance(mem[(32 * idx) + 128])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _163 = mem[(32 * idx) + 128]
        if not arg2:
            mem[_155 + 64] = 0
        else:
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_163)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == mem[_170]
            mem[_155 + 64] = mem[_170]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + 129] = _155
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _157 = mem[64]
    mem[mem[64]] = 32
    _161 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _161:
        _175 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_175 + 32]
        mem[t + 64] = mem[_175 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _157 + (96 * _161) + -mem[64] + 64
}

function sub_b523f7fa(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _54 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_54] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_54 + 32] = cd[(s + 32)]
        mem[t] = _54
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_57] == mem[_57]
    if mem[_57] < cd[68]:
        revert with 'NH{q', 17
    if mem[_57] - cd[68] < 0:
        revert with 0, 'Transfer: Insufficient'
    _59 = mem[96]
    idx = 0
    while idx < _59:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + 128] + 12 len 20]:
            if mem[mem[(32 * idx) + 128] + 32] > 0:
                _110 = mem[mem[(32 * idx) + 128]]
                _111 = mem[mem[(32 * idx) + 128] + 32]
                _112 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_110)
                mem[mem[64] + 100] = _111
                _113 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_113 + 32] = mem[_113 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                _116 = mem[_113]
                s = 0
                while s < _116:
                    mem[_112 + s + 132] = mem[_113 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_116) <= _116:
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _112 + _116 + -mem[64] + 128]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    else:
                        _152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_152] = return_data.size
                        mem[_152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_152 + 32] == bool(mem[_152 + 32])
                            if not mem[_152 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                else:
                    mem[_112 + _116 + 132] = 0
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _112 + _116 + -mem[64] + 128]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                    else:
                        _154 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_154] = return_data.size
                        mem[_154 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_154 + 32] == bool(mem[_154 + 32])
                            if not mem[_154 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4bed0cb2(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[96] = 224
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[320] = 96
    mem[352] = 96
    mem[384] = 0
    mem[512] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _8 = mem[512]
    require mem[512] <= test266151307()
    require mem[512] + 543 < return_data.size + 512
    _9 = mem[mem[512] + 512]
    if mem[mem[512] + 512] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[512] + 512])) + 513 > test266151307() or ceil32(ceil32(mem[mem[512] + 512])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[512] + 512])) + 513
    mem[ceil32(return_data.size) + 512] = mem[mem[512] + 512]
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 544 len ceil32(_9)] = mem[_8 + 544 len ceil32(_9)]
    if ceil32(_9) <= _9:
        mem[416] = ceil32(return_data.size) + 512
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _758 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _760 = mem[_758]
        require mem[_758] <= test266151307()
        require _758 + mem[_758] + 31 < _758 + return_data.size
        _762 = mem[_758 + mem[_758]]
        if mem[_758 + mem[_758]] > test266151307():
            revert with 'NH{q', 65
        if _758 + ceil32(return_data.size) + ceil32(ceil32(mem[_758 + mem[_758]])) + 1 > test266151307() or ceil32(ceil32(mem[_758 + mem[_758]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _758 + ceil32(return_data.size) + ceil32(ceil32(mem[_758 + mem[_758]])) + 1
        mem[_758 + ceil32(return_data.size)] = _762
        require _760 + _762 + 32 <= return_data.size
        mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)] = mem[_758 + _760 + 32 len ceil32(_762)]
        if ceil32(_762) <= _762:
            mem[448] = _758 + ceil32(return_data.size)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1602 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1602] == mem[_1602 + 31 len 1]
            mem[480] = mem[_1602 + 31 len 1]
            mem[96] = 416
            if not address(arg2):
                if not address(arg3):
                    _1610 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 160] = 96
                    _1630 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 288 len ceil32(_1630)] = mem[ceil32(return_data.size) + 544 len ceil32(_1630)]
                    if ceil32(_1630) > _1630:
                        mem[mem[64] + _1630 + 288] = 0
                    mem[mem[64] + 192] = ceil32(_1630) + 128
                    mem[mem[64] + ceil32(_1630) + 288] = _762
                    mem[mem[64] + ceil32(_1630) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) > _762:
                        mem[mem[64] + ceil32(_1630) + _762 + 320] = 0
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[_1610 + 96] = 0
                    mem[_1610 + 128] = 0
                    return memory
                      from mem[64]
                       len _1610 + ceil32(_1630) + ceil32(_762) + -mem[64] + 320
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1675] == mem[_1675]
                mem[160] = mem[_1675]
                _1747 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1795 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1795)] = mem[ceil32(return_data.size) + 544 len ceil32(_1795)]
                if ceil32(_1795) > _1795:
                    mem[mem[64] + _1795 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1795) + 128
                mem[mem[64] + ceil32(_1795) + 288] = _762
                mem[mem[64] + ceil32(_1795) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) > _762:
                    mem[mem[64] + ceil32(_1795) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1747 + 96] = mem[160]
                mem[_1747 + 128] = 0
                return memory
                  from mem[64]
                   len _1747 + ceil32(_1795) + ceil32(_762) + -mem[64] + 320
            if not address(arg1):
                mem[128] = 0
                mem[192] = eth.balance(arg2)
                if not address(arg3):
                    _1634 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 160] = 96
                    _1660 = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                    mem[mem[64] + 288 len ceil32(_1660)] = mem[ceil32(return_data.size) + 544 len ceil32(_1660)]
                    if ceil32(_1660) > _1660:
                        mem[mem[64] + _1660 + 288] = 0
                    mem[mem[64] + 192] = ceil32(_1660) + 128
                    mem[mem[64] + ceil32(_1660) + 288] = _762
                    mem[mem[64] + ceil32(_1660) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) > _762:
                        mem[mem[64] + ceil32(_1660) + _762 + 320] = 0
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[_1634 + 96] = 0
                    mem[_1634 + 128] = eth.balance(arg2)
                    return memory
                      from mem[64]
                       len _1634 + ceil32(_1660) + ceil32(_762) + -mem[64] + 320
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(arg3)
                require ext_code.size(address(arg1))
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg2), address(arg3)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1707] == mem[_1707]
                mem[160] = mem[_1707]
                _1808 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1864 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1864)] = mem[ceil32(return_data.size) + 544 len ceil32(_1864)]
                if ceil32(_1864) <= _1864:
                    mem[mem[64] + 192] = ceil32(_1864) + 128
                    mem[mem[64] + ceil32(_1864) + 288] = _762
                    mem[mem[64] + ceil32(_1864) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) <= _762:
                        mem[mem[64] + 224] = mem[511 len 1]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = mem[160]
                        return 32, 128, 
                               0,
                               mem[160],
                               eth.balance(arg2),
                               96,
                               ceil32(_1864) + 128,
                               mem[mem[64] + 224 len ceil32(_1864) + 64],
                               _762,
                               mem[mem[64] + ceil32(_1864) + 320 len ceil32(_762)]
                    mem[mem[64] + ceil32(_1864) + _762 + 320] = 0
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[_1808 + 96] = mem[160]
                    mem[_1808 + 128] = eth.balance(arg2)
                    return memory
                      from mem[64]
                       len _1808 + ceil32(_1864) + ceil32(_762) + -mem[64] + 320
                mem[mem[64] + _1864 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1864) + 128
                mem[mem[64] + ceil32(_1864) + 288] = _762
                mem[mem[64] + ceil32(_1864) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) > _762:
                    mem[mem[64] + ceil32(_1864) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = mem[160]
                return 32, 128, 
                       0,
                       mem[160],
                       eth.balance(arg2),
                       96,
                       ceil32(_1864) + 128,
                       mem[mem[64] + 224 len _1864 + 64],
                       0,
                       mem[mem[64] + _1864 + 320 len ceil32(_1864) + ceil32(_762) - _1864]
            mem[mem[64] + 4] = address(arg2)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1648 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1648] == mem[_1648]
            mem[128] = mem[_1648]
            mem[192] = eth.balance(arg2)
            if not address(arg3):
                _1734 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1777 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1777)] = mem[ceil32(return_data.size) + 544 len ceil32(_1777)]
                if ceil32(_1777) <= _1777:
                    mem[mem[64] + 192] = ceil32(_1777) + 128
                    mem[mem[64] + ceil32(_1777) + 288] = _762
                    mem[mem[64] + ceil32(_1777) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) > _762:
                        mem[mem[64] + ceil32(_1777) + _762 + 320] = 0
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = eth.balance(arg2)
                    return 32, 128, 
                           mem[128],
                           0,
                           eth.balance(arg2),
                           96,
                           ceil32(_1777) + 128,
                           mem[mem[64] + 224 len ceil32(_1777) + 64],
                           _762,
                           mem[mem[64] + ceil32(_1777) + 320 len ceil32(_762)]
                mem[mem[64] + _1777 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1777) + 128
                mem[mem[64] + ceil32(_1777) + 288] = _762
                mem[mem[64] + ceil32(_1777) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) <= _762:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = eth.balance(arg2)
                    return 32, 128, 
                           mem[128],
                           0,
                           eth.balance(arg2),
                           96,
                           ceil32(_1777) + 128,
                           mem[mem[64] + 224 len _1777 + 64],
                           0,
                           mem[mem[64] + _1777 + 320 len ceil32(_1777) + ceil32(_762) - _1777]
                mem[mem[64] + ceil32(_1777) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = mem[128]
                mem[_1734 + 96] = 0
                mem[_1734 + 128] = eth.balance(arg2)
                return memory
                  from mem[64]
                   len _1734 + ceil32(_1777) + ceil32(_762) + -mem[64] + 320
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1887 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1887] == mem[_1887]
            mem[160] = mem[_1887]
            _2031 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _2091 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_2091)] = mem[ceil32(return_data.size) + 544 len ceil32(_2091)]
            if ceil32(_2091) > _2091:
                mem[mem[64] + _2091 + 288] = 0
            mem[mem[64] + 192] = ceil32(_2091) + 128
            mem[mem[64] + ceil32(_2091) + 288] = _762
            mem[mem[64] + ceil32(_2091) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
            if ceil32(_762) > _762:
                mem[mem[64] + ceil32(_2091) + _762 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = mem[128]
            mem[_2031 + 96] = mem[160]
            mem[_2031 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _2031 + ceil32(_2091) + ceil32(_762) + -mem[64] + 320
        mem[_758 + ceil32(return_data.size) + _762 + 32] = 0
        mem[448] = _758 + ceil32(return_data.size)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1604 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1604] == mem[_1604 + 31 len 1]
        mem[480] = mem[_1604 + 31 len 1]
        mem[96] = 416
        if not address(arg2):
            if not address(arg3):
                _1616 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1632 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1632)] = mem[ceil32(return_data.size) + 544 len ceil32(_1632)]
                if ceil32(_1632) <= _1632:
                    mem[mem[64] + 192] = ceil32(_1632) + 128
                    mem[mem[64] + ceil32(_1632) + 288] = _762
                    mem[mem[64] + ceil32(_1632) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) <= _762:
                        mem[mem[64] + 224] = mem[511 len 1]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 0
                        return '`', 
                               ceil32(_1632) + 128,
                               mem[mem[64] + 224 len ceil32(_1632) + 64],
                               _762,
                               mem[mem[64] + ceil32(_1632) + 320 len ceil32(_762)]
                else:
                    mem[mem[64] + _1632 + 288] = 0
                    mem[mem[64] + 192] = ceil32(_1632) + 128
                    mem[mem[64] + ceil32(_1632) + 288] = _762
                    mem[mem[64] + ceil32(_1632) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) <= _762:
                        mem[mem[64] + 224] = mem[511 len 1]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 0
                        return '`', 
                               ceil32(_1632) + 128,
                               mem[mem[64] + 224 len _1632 + 64],
                               0,
                               mem[mem[64] + _1632 + 320 len ceil32(_1632) + ceil32(_762) - _1632]
                ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('var', '_762'))), ('var', '_762'))
                mem[mem[64] + ceil32(_1632) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1616 + 96] = 0
                mem[_1616 + 128] = 0
                return memory
                  from mem[64]
                   len _1616 + ceil32(_1632) + ceil32(_762) + -mem[64] + 320
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1680 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1680] == mem[_1680]
            mem[160] = mem[_1680]
            _1756 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1801 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1801)] = mem[ceil32(return_data.size) + 544 len ceil32(_1801)]
            if ceil32(_1801) <= _1801:
                mem[mem[64] + 192] = ceil32(_1801) + 128
                mem[mem[64] + ceil32(_1801) + 288] = _762
                mem[mem[64] + ceil32(_1801) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) <= _762:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = mem[160]
                    return 32, 128, 
                           0,
                           mem[160],
                           0,
                           96,
                           ceil32(_1801) + 128,
                           mem[mem[64] + 224 len ceil32(_1801) + 64],
                           _762,
                           mem[mem[64] + ceil32(_1801) + 320 len ceil32(_762)]
                mem[mem[64] + ceil32(_1801) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1756 + 96] = mem[160]
                mem[_1756 + 128] = 0
                return memory
                  from mem[64]
                   len _1756 + ceil32(_1801) + ceil32(_762) + -mem[64] + 320
            mem[mem[64] + _1801 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1801) + 128
            mem[mem[64] + ceil32(_1801) + 288] = _762
            mem[mem[64] + ceil32(_1801) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
            if ceil32(_762) > _762:
                mem[mem[64] + ceil32(_1801) + _762 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = mem[160]
            return 32, 128, 
                   0,
                   mem[160],
                   0,
                   96,
                   ceil32(_1801) + 128,
                   mem[mem[64] + 224 len _1801 + 64],
                   0,
                   mem[mem[64] + _1801 + 320 len ceil32(_1801) + ceil32(_762) - _1801]
        if not address(arg1):
            mem[128] = 0
            mem[192] = eth.balance(arg2)
            if not address(arg3):
                _1639 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1665 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1665)] = mem[ceil32(return_data.size) + 544 len ceil32(_1665)]
                if ceil32(_1665) <= _1665:
                    mem[mem[64] + 192] = ceil32(_1665) + 128
                    mem[mem[64] + ceil32(_1665) + 288] = _762
                    mem[mem[64] + ceil32(_1665) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) <= _762:
                        mem[mem[64] + 224] = mem[511 len 1]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 0
                        return 32, 128, 
                               0,
                               0,
                               eth.balance(arg2),
                               96,
                               ceil32(_1665) + 128,
                               mem[mem[64] + 224 len ceil32(_1665) + 64],
                               _762,
                               mem[mem[64] + ceil32(_1665) + 320 len ceil32(_762)]
                else:
                    mem[mem[64] + _1665 + 288] = 0
                    mem[mem[64] + 192] = ceil32(_1665) + 128
                    mem[mem[64] + ceil32(_1665) + 288] = _762
                    mem[mem[64] + ceil32(_1665) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                    if ceil32(_762) <= _762:
                        mem[mem[64] + 224] = mem[511 len 1]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 0
                        return 32, 128, 
                               0,
                               0,
                               eth.balance(arg2),
                               96,
                               ceil32(_1665) + 128,
                               mem[mem[64] + 224 len _1665 + 64],
                               0,
                               mem[mem[64] + _1665 + 320 len ceil32(_1665) + ceil32(_762) - _1665]
                ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('var', '_762'))), ('var', '_762'))
                mem[mem[64] + ceil32(_1665) + _762 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1639 + 96] = 0
                mem[_1639 + 128] = eth.balance(arg2)
                return memory
                  from mem[64]
                   len _1639 + ceil32(_1665) + ceil32(_762) + -mem[64] + 320
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1713 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1713] == mem[_1713]
            mem[160] = mem[_1713]
            _1820 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1877 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1877)] = mem[ceil32(return_data.size) + 544 len ceil32(_1877)]
            if ceil32(_1877) > _1877:
                mem[mem[64] + _1877 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1877) + 128
            mem[mem[64] + ceil32(_1877) + 288] = _762
            mem[mem[64] + ceil32(_1877) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
            if ceil32(_762) > _762:
                mem[mem[64] + ceil32(_1877) + _762 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[_1820 + 96] = mem[160]
            mem[_1820 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1820 + ceil32(_1877) + ceil32(_762) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1655 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1655] == mem[_1655]
        mem[128] = mem[_1655]
        mem[192] = eth.balance(arg2)
        if not address(arg3):
            _1742 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1789 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1789)] = mem[ceil32(return_data.size) + 544 len ceil32(_1789)]
            if ceil32(_1789) <= _1789:
                mem[mem[64] + 192] = ceil32(_1789) + 128
                mem[mem[64] + ceil32(_1789) + 288] = _762
                mem[mem[64] + ceil32(_1789) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) <= _762:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = eth.balance(arg2)
                    return 32, 128, 
                           mem[128],
                           0,
                           eth.balance(arg2),
                           96,
                           ceil32(_1789) + 128,
                           mem[mem[64] + 224 len ceil32(_1789) + 64],
                           _762,
                           mem[mem[64] + ceil32(_1789) + 320 len ceil32(_762)]
            else:
                mem[mem[64] + _1789 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1789) + 128
                mem[mem[64] + ceil32(_1789) + 288] = _762
                mem[mem[64] + ceil32(_1789) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
                if ceil32(_762) <= _762:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = mem[128]
                    mem[mem[64] + 96] = 0
                    mem[mem[64] + 128] = eth.balance(arg2)
                    return 32, 128, 
                           mem[128],
                           0,
                           eth.balance(arg2),
                           96,
                           ceil32(_1789) + 128,
                           mem[mem[64] + 224 len _1789 + 64],
                           0,
                           mem[mem[64] + _1789 + 320 len ceil32(_1789) + ceil32(_762) - _1789]
            ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('var', '_762'))), ('var', '_762'))
            mem[mem[64] + ceil32(_1789) + _762 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = mem[128]
            mem[_1742 + 96] = 0
            mem[_1742 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1742 + ceil32(_1789) + ceil32(_762) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1905 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1905] == mem[_1905]
        mem[160] = mem[_1905]
        _2046 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = 96
        _2103 = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 288 len ceil32(_2103)] = mem[ceil32(return_data.size) + 544 len ceil32(_2103)]
        if ceil32(_2103) > _2103:
            mem[mem[64] + _2103 + 288] = 0
        mem[mem[64] + 192] = ceil32(_2103) + 128
        mem[mem[64] + ceil32(_2103) + 288] = _762
        mem[mem[64] + ceil32(_2103) + 320 len ceil32(_762)] = mem[_758 + ceil32(return_data.size) + 32 len ceil32(_762)]
        if ceil32(_762) > _762:
            mem[mem[64] + ceil32(_2103) + _762 + 320] = 0
        mem[mem[64] + 224] = mem[511 len 1]
        mem[mem[64] + 64] = mem[128]
        mem[_2046 + 96] = mem[160]
        mem[_2046 + 128] = eth.balance(arg2)
        return memory
          from mem[64]
           len _2046 + ceil32(_2103) + ceil32(_762) + -mem[64] + 320
    mem[ceil32(return_data.size) + _9 + 544] = 0
    mem[416] = ceil32(return_data.size) + 512
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _759 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _761 = mem[_759]
    require mem[_759] <= test266151307()
    require _759 + mem[_759] + 31 < _759 + return_data.size
    _763 = mem[_759 + mem[_759]]
    if mem[_759 + mem[_759]] > test266151307():
        revert with 'NH{q', 65
    if _759 + ceil32(return_data.size) + ceil32(ceil32(mem[_759 + mem[_759]])) + 1 > test266151307() or ceil32(ceil32(mem[_759 + mem[_759]])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _759 + ceil32(return_data.size) + ceil32(ceil32(mem[_759 + mem[_759]])) + 1
    mem[_759 + ceil32(return_data.size)] = _763
    require _761 + _763 + 32 <= return_data.size
    mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)] = mem[_759 + _761 + 32 len ceil32(_763)]
    if ceil32(_763) <= _763:
        mem[448] = _759 + ceil32(return_data.size)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1603 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1603] == mem[_1603 + 31 len 1]
        mem[480] = mem[_1603 + 31 len 1]
        mem[96] = 416
        if not address(arg2):
            if not address(arg3):
                _1613 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1631 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1631)] = mem[ceil32(return_data.size) + 544 len ceil32(_1631)]
                if ceil32(_1631) > _1631:
                    mem[mem[64] + _1631 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1631) + 128
                mem[mem[64] + ceil32(_1631) + 288] = _763
                mem[mem[64] + ceil32(_1631) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
                if ceil32(_763) > _763:
                    mem[mem[64] + ceil32(_1631) + _763 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1613 + 96] = 0
                mem[_1613 + 128] = 0
                return memory
                  from mem[64]
                   len _1613 + ceil32(_1631) + ceil32(_763) + -mem[64] + 320
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1677] == mem[_1677]
            mem[160] = mem[_1677]
            _1750 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1797 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1797)] = mem[ceil32(return_data.size) + 544 len ceil32(_1797)]
            if ceil32(_1797) > _1797:
                mem[mem[64] + _1797 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1797) + 128
            mem[mem[64] + ceil32(_1797) + 288] = _763
            mem[mem[64] + ceil32(_1797) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) > _763:
                mem[mem[64] + ceil32(_1797) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[_1750 + 96] = mem[160]
            mem[_1750 + 128] = 0
            return memory
              from mem[64]
               len _1750 + ceil32(_1797) + ceil32(_763) + -mem[64] + 320
        if not address(arg1):
            mem[128] = 0
            mem[192] = eth.balance(arg2)
            if not address(arg3):
                _1636 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 128
                mem[mem[64] + 160] = 96
                _1662 = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
                mem[mem[64] + 288 len ceil32(_1662)] = mem[ceil32(return_data.size) + 544 len ceil32(_1662)]
                if ceil32(_1662) > _1662:
                    mem[mem[64] + _1662 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1662) + 128
                mem[mem[64] + ceil32(_1662) + 288] = _763
                mem[mem[64] + ceil32(_1662) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
                if ceil32(_763) > _763:
                    mem[mem[64] + ceil32(_1662) + _763 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[_1636 + 96] = 0
                mem[_1636 + 128] = eth.balance(arg2)
                return memory
                  from mem[64]
                   len _1636 + ceil32(_1662) + ceil32(_763) + -mem[64] + 320
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(address(arg1))
            staticcall address(arg1).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1709 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1709] == mem[_1709]
            mem[160] = mem[_1709]
            _1813 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1869 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1869)] = mem[ceil32(return_data.size) + 544 len ceil32(_1869)]
            if ceil32(_1869) <= _1869:
                mem[mem[64] + 192] = ceil32(_1869) + 128
                mem[mem[64] + ceil32(_1869) + 288] = _763
                mem[mem[64] + ceil32(_1869) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
                if ceil32(_763) > _763:
                    mem[mem[64] + ceil32(_1869) + _763 + 320] = 0
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = mem[160]
                return 32, 128, 
                       0,
                       mem[160],
                       eth.balance(arg2),
                       96,
                       ceil32(_1869) + 128,
                       mem[mem[64] + 224 len ceil32(_1869) + 64],
                       _763,
                       mem[mem[64] + ceil32(_1869) + 320 len ceil32(_763)]
            mem[mem[64] + _1869 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1869) + 128
            mem[mem[64] + ceil32(_1869) + 288] = _763
            mem[mem[64] + ceil32(_1869) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) <= _763:
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = mem[160]
                return 32, 128, 
                       0,
                       mem[160],
                       eth.balance(arg2),
                       96,
                       ceil32(_1869) + 128,
                       mem[mem[64] + 224 len _1869 + 64],
                       0,
                       mem[mem[64] + _1869 + 320 len ceil32(_1869) + ceil32(_763) - _1869]
            mem[mem[64] + ceil32(_1869) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[_1813 + 96] = mem[160]
            mem[_1813 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1813 + ceil32(_1869) + ceil32(_763) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1651 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1651] == mem[_1651]
        mem[128] = mem[_1651]
        mem[192] = eth.balance(arg2)
        if not address(arg3):
            _1738 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1783 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1783)] = mem[ceil32(return_data.size) + 544 len ceil32(_1783)]
            if ceil32(_1783) > _1783:
                mem[mem[64] + _1783 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1783) + 128
            mem[mem[64] + ceil32(_1783) + 288] = _763
            mem[mem[64] + ceil32(_1783) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) > _763:
                mem[mem[64] + ceil32(_1783) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = mem[128]
            mem[_1738 + 96] = 0
            mem[_1738 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1738 + ceil32(_1783) + ceil32(_763) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1895 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1895] == mem[_1895]
        mem[160] = mem[_1895]
        _2037 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = 96
        _2096 = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 288 len ceil32(_2096)] = mem[ceil32(return_data.size) + 544 len ceil32(_2096)]
        if ceil32(_2096) > _2096:
            mem[mem[64] + _2096 + 288] = 0
        mem[mem[64] + 192] = ceil32(_2096) + 128
        mem[mem[64] + ceil32(_2096) + 288] = _763
        mem[mem[64] + ceil32(_2096) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
        if ceil32(_763) > _763:
            mem[mem[64] + ceil32(_2096) + _763 + 320] = 0
        mem[mem[64] + 224] = mem[511 len 1]
        mem[mem[64] + 64] = mem[128]
        mem[_2037 + 96] = mem[160]
        mem[_2037 + 128] = eth.balance(arg2)
        return memory
          from mem[64]
           len _2037 + ceil32(_2096) + ceil32(_763) + -mem[64] + 320
    mem[_759 + ceil32(return_data.size) + _763 + 32] = 0
    mem[448] = _759 + ceil32(return_data.size)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1605 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1605] == mem[_1605 + 31 len 1]
    mem[480] = mem[_1605 + 31 len 1]
    mem[96] = 416
    if not address(arg2):
        if not address(arg3):
            _1619 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1633 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1633)] = mem[ceil32(return_data.size) + 544 len ceil32(_1633)]
            if ceil32(_1633) <= _1633:
                mem[mem[64] + 192] = ceil32(_1633) + 128
                mem[mem[64] + ceil32(_1633) + 288] = _763
                mem[mem[64] + ceil32(_1633) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
                if ceil32(_763) <= _763:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return '`', 
                           ceil32(_1633) + 128,
                           mem[mem[64] + 224 len ceil32(_1633) + 64],
                           _763,
                           mem[mem[64] + ceil32(_1633) + 320 len ceil32(_763)]
            else:
                mem[mem[64] + _1633 + 288] = 0
                mem[mem[64] + 192] = ceil32(_1633) + 128
                mem[mem[64] + ceil32(_1633) + 288] = _763
                mem[mem[64] + ceil32(_1633) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
                if ceil32(_763) <= _763:
                    mem[mem[64] + 224] = mem[511 len 1]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return '`', 
                           ceil32(_1633) + 128,
                           mem[mem[64] + 224 len _1633 + 64],
                           0,
                           mem[mem[64] + _1633 + 320 len ceil32(_1633) + ceil32(_763) - _1633]
            ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('var', '_763'))), ('var', '_763'))
            mem[mem[64] + ceil32(_1633) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[_1619 + 96] = 0
            mem[_1619 + 128] = 0
            return memory
              from mem[64]
               len _1619 + ceil32(_1633) + ceil32(_763) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1683 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1683] == mem[_1683]
        mem[160] = mem[_1683]
        _1762 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = 96
        _1805 = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 288 len ceil32(_1805)] = mem[ceil32(return_data.size) + 544 len ceil32(_1805)]
        if ceil32(_1805) > _1805:
            mem[mem[64] + _1805 + 288] = 0
        mem[mem[64] + 192] = ceil32(_1805) + 128
        mem[mem[64] + ceil32(_1805) + 288] = _763
        mem[mem[64] + ceil32(_1805) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
        if ceil32(_763) > _763:
            mem[mem[64] + ceil32(_1805) + _763 + 320] = 0
        mem[mem[64] + 224] = mem[511 len 1]
        mem[mem[64] + 64] = 0
        mem[_1762 + 96] = mem[160]
        mem[_1762 + 128] = 0
        return memory
          from mem[64]
           len _1762 + ceil32(_1805) + ceil32(_763) + -mem[64] + 320
    if not address(arg1):
        mem[128] = 0
        mem[192] = eth.balance(arg2)
        if not address(arg3):
            _1642 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 128
            mem[mem[64] + 160] = 96
            _1667 = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
            mem[mem[64] + 288 len ceil32(_1667)] = mem[ceil32(return_data.size) + 544 len ceil32(_1667)]
            if ceil32(_1667) > _1667:
                mem[mem[64] + _1667 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1667) + 128
            mem[mem[64] + ceil32(_1667) + 288] = _763
            mem[mem[64] + ceil32(_1667) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) > _763:
                mem[mem[64] + ceil32(_1667) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = 0
            mem[_1642 + 96] = 0
            mem[_1642 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1642 + ceil32(_1667) + ceil32(_763) + -mem[64] + 320
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1717 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1717] == mem[_1717]
        mem[160] = mem[_1717]
        _1825 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = 96
        _1883 = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 288 len ceil32(_1883)] = mem[ceil32(return_data.size) + 544 len ceil32(_1883)]
        if ceil32(_1883) <= _1883:
            mem[mem[64] + 192] = ceil32(_1883) + 128
            mem[mem[64] + ceil32(_1883) + 288] = _763
            mem[mem[64] + ceil32(_1883) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) <= _763:
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = mem[160]
                return 32, 128, 
                       0,
                       mem[160],
                       eth.balance(arg2),
                       96,
                       ceil32(_1883) + 128,
                       mem[mem[64] + 224 len ceil32(_1883) + 64],
                       _763,
                       mem[mem[64] + ceil32(_1883) + 320 len ceil32(_763)]
        else:
            mem[mem[64] + _1883 + 288] = 0
            mem[mem[64] + 192] = ceil32(_1883) + 128
            mem[mem[64] + ceil32(_1883) + 288] = _763
            mem[mem[64] + ceil32(_1883) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) <= _763:
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = mem[160]
                return 32, 128, 
                       0,
                       mem[160],
                       eth.balance(arg2),
                       96,
                       ceil32(_1883) + 128,
                       mem[mem[64] + 224 len _1883 + 64],
                       0,
                       mem[mem[64] + _1883 + 320 len ceil32(_1883) + ceil32(_763) - _1883]
        ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('var', '_763'))), ('var', '_763'))
        mem[mem[64] + ceil32(_1883) + _763 + 320] = 0
        mem[mem[64] + 224] = mem[511 len 1]
        mem[mem[64] + 64] = 0
        mem[_1825 + 96] = mem[160]
        mem[_1825 + 128] = eth.balance(arg2)
        return memory
          from mem[64]
           len _1825 + ceil32(_1883) + ceil32(_763) + -mem[64] + 320
    mem[mem[64] + 4] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1658 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1658] == mem[_1658]
    mem[128] = mem[_1658]
    mem[192] = eth.balance(arg2)
    if not address(arg3):
        _1744 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 128
        mem[mem[64] + 160] = 96
        _1792 = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 288 len ceil32(_1792)] = mem[ceil32(return_data.size) + 544 len ceil32(_1792)]
        if ceil32(_1792) <= _1792:
            mem[mem[64] + 192] = ceil32(_1792) + 128
            mem[mem[64] + ceil32(_1792) + 288] = _763
            mem[mem[64] + ceil32(_1792) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
            if ceil32(_763) <= _763:
                mem[mem[64] + 224] = mem[511 len 1]
                mem[mem[64] + 64] = mem[128]
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = eth.balance(arg2)
                return 32, 128, 
                       mem[128],
                       0,
                       eth.balance(arg2),
                       96,
                       ceil32(_1792) + 128,
                       mem[mem[64] + 224 len ceil32(_1792) + 64],
                       _763,
                       mem[mem[64] + ceil32(_1792) + 320 len ceil32(_763)]
            mem[mem[64] + ceil32(_1792) + _763 + 320] = 0
            mem[mem[64] + 224] = mem[511 len 1]
            mem[mem[64] + 64] = mem[128]
            mem[_1744 + 96] = 0
            mem[_1744 + 128] = eth.balance(arg2)
            return memory
              from mem[64]
               len _1744 + ceil32(_1792) + ceil32(_763) + -mem[64] + 320
        mem[mem[64] + _1792 + 288] = 0
        mem[mem[64] + 192] = ceil32(_1792) + 128
        mem[mem[64] + ceil32(_1792) + 288] = _763
        mem[mem[64] + ceil32(_1792) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
        if ceil32(_763) > _763:
            mem[mem[64] + ceil32(_1792) + _763 + 320] = 0
        mem[mem[64] + 224] = mem[511 len 1]
        mem[mem[64] + 64] = mem[128]
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = eth.balance(arg2)
        return 32, 128, 
               mem[128],
               0,
               eth.balance(arg2),
               96,
               ceil32(_1792) + 128,
               mem[mem[64] + 224 len _1792 + 64],
               0,
               mem[mem[64] + _1792 + 320 len ceil32(_1792) + ceil32(_763) - _1792]
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1912 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1912] == mem[_1912]
    mem[160] = mem[_1912]
    _2053 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 128
    mem[mem[64] + 160] = 96
    _2108 = mem[ceil32(return_data.size) + 512]
    mem[mem[64] + 256] = mem[ceil32(return_data.size) + 512]
    mem[mem[64] + 288 len ceil32(_2108)] = mem[ceil32(return_data.size) + 544 len ceil32(_2108)]
    if ceil32(_2108) > _2108:
        mem[mem[64] + _2108 + 288] = 0
    mem[mem[64] + 192] = ceil32(_2108) + 128
    mem[mem[64] + ceil32(_2108) + 288] = _763
    mem[mem[64] + ceil32(_2108) + 320 len ceil32(_763)] = mem[_759 + ceil32(return_data.size) + 32 len ceil32(_763)]
    if ceil32(_763) > _763:
        mem[mem[64] + ceil32(_2108) + _763 + 320] = 0
    mem[mem[64] + 224] = mem[511 len 1]
    mem[mem[64] + 64] = mem[128]
    mem[_2053 + 96] = mem[160]
    mem[_2053 + 128] = eth.balance(arg2)
    return memory
      from mem[64]
       len _2053 + ceil32(_2108) + ceil32(_763) + -mem[64] + 320
}



}
