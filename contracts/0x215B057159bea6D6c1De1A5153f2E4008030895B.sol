contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_7ed1f1dd(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
}

function sub_d5b99797(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
}

function DVMFlashLoanCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
}

function sub_a07bb134(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0 < 144:
        revert with 'NH{q', 17
    if address(stor0 - 144 / 17) != msg.sender:
        revert with 0, '!a'
    require ext_code.size(stor1)
    call stor1.0x6f94ca3c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, '!l'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_81]
            require mem[_81] == mem[_81]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _90 = mem[_89]
            require mem[_89] == mem[_89]
            if _82 > mem[_89]:
                _94 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_94] = address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = tx.origin
                mem[mem[64] + 100] = _90
                _102 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_102 + 32] = mem[_102 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[_94 + 32] = _102
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _94
            else:
                _95 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_95] = address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = tx.origin
                mem[mem[64] + 100] = _82
                _105 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_105 + 32] = mem[_105 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[_95 + 32] = _105
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _95
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 0x17352e1300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _63 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 100
        u = mem[64] + 100
        while idx < _63:
            mem[u] = t + -_61 - 100
            _115 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _120 = mem[_115 + 32]
            mem[t + 32] = 64
            _121 = mem[_120]
            mem[t + 64] = mem[_120]
            v = 0
            while v < _121:
                mem[t + v + 96] = mem[_120 + v + 32]
                v = v + 32
                continue 
            if ceil32(_121) > _121:
                mem[t + _121 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_121) + 96
            u = u + 32
            continue 
        mem[_61 + 36] = 0
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 96
        mem[var53001] = (32 * ('cd', 36).length) + 128
        s = var53001
        idx = var53002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 128] = 0
            mem[(32 * ('cd', 36).length) + 160] = 96
            mem[s + 32] = (32 * ('cd', 36).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _159 = mem[_158]
            require mem[_158] == mem[_158]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _163 = mem[_162]
            require mem[_162] == mem[_162]
            if _159 > mem[_162]:
                _164 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_164] = address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = tx.origin
                mem[mem[64] + 100] = _163
                _168 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_168 + 32] = mem[_168 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[_164 + 32] = _168
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _164
            else:
                _165 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                mem[_165] = address(cd[((32 * idx) + cd[68] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = tx.origin
                mem[mem[64] + 100] = _159
                _171 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_171 + 32] = mem[_171 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[_165 + 32] = _171
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _165
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _148 = mem[64]
        mem[mem[64]] = 0x17352e1300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _149 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 100
        u = mem[64] + 100
        while idx < _149:
            mem[u] = t + -_148 - 100
            _174 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _177 = mem[_174 + 32]
            mem[t + 32] = 64
            _178 = mem[_177]
            mem[t + 64] = mem[_177]
            v = 0
            while v < _178:
                mem[t + v + 96] = mem[_177 + v + 32]
                v = v + 32
                continue 
            if ceil32(_178) > _178:
                mem[t + _178 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_178) + 96
            u = u + 32
            continue 
        mem[_148 + 36] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
