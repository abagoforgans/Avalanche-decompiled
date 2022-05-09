contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 _taxFee;

function _taxFee() {
    return _taxFee
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    _taxFee = arg1
}

function emptyBalance() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multiswap(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        if not _taxFee:
            revert with 0, 18
        if not 100 / _taxFee:
            revert with 0, 18
        if msg.value < msg.value / 100 / _taxFee:
            revert with 0, 17
        if not arg2.length:
            revert with 0, 18
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _93 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
               value msg.value - (msg.value / 100 / _taxFee) / arg2.length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _93 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _101 = mem[100]
                require mem[100] >= 32
                _103 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _105 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 0, 65
                _107 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_107] = mem[mem[132] + 132]
                require _103 + _105 + 164 <= _101 + 132
                idx = 0
                while idx < _105:
                    mem[idx + _107 + 32] = mem[idx + _103 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_105) <= _105:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _187 = mem[_107]
                    mem[mem[64] + 36] = mem[_107]
                    idx = 0
                    while idx < _187:
                        mem[idx + _181 + 68] = mem[idx + _107 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_187) > _187:
                        mem[_181 + _187 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_187) + _181 + -mem[64] + 68
                mem[_107 + _105 + 32] = 0
                _184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _191 = mem[_107]
                mem[mem[64] + 36] = mem[_107]
                idx = 0
                while idx < _191:
                    mem[idx + _184 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_191) > _191:
                    mem[_184 + _191 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_191) + _184 + -mem[64] + 68
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_96] = return_data.size
            mem[_96 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _96
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _102 = Mask(224, 0, return_data.size), mem[_96 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_96 + 32 len 4] >= 32
            _104 = mem[_96 + 36]
            require mem[_96 + 36] <= test266151307()
            require _96 + mem[_96 + 36] + 67 < _96 + Mask(224, 0, return_data.size), mem[_96 + 32 len 4] + 36
            _106 = mem[_96 + mem[_96 + 36] + 36]
            if mem[_96 + mem[_96 + 36] + 36] > test266151307():
                revert with 0, 65
            _108 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1
            mem[_108] = _106
            require _104 + _106 + 68 <= _102 + 36
            idx = 0
            while idx < _106:
                mem[idx + _108 + 32] = mem[idx + _96 + _104 + 68]
                idx = idx + 32
                continue 
            if ceil32(_106) <= _106:
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _106
                idx = 0
                while idx < _106:
                    mem[idx + _182 + 68] = mem[idx + _108 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_106) > _106:
                    mem[_182 + _106 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_106) + _182 + -mem[64] + 68
            mem[_108 + _106 + 32] = 0
            _185 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _106
            idx = 0
            while idx < _106:
                mem[idx + _185 + 68] = mem[idx + _108 + 32]
                idx = idx + 32
                continue 
            if ceil32(_106) > _106:
                mem[_185 + _106 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_106) + _185 + -mem[64] + 68
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _89:
            mem[t] = u + -_88 - 64
            _174 = mem[s]
            _178 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _178:
                mem[v + u + 32] = mem[v + _174 + 32]
                v = v + 32
                continue 
            if ceil32(_178) > _178:
                mem[u + _178 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_178) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if not _taxFee:
            revert with 0, 18
        if not 100 / _taxFee:
            revert with 0, 18
        if msg.value < msg.value / 100 / _taxFee:
            revert with 0, 17
        if not arg2.length:
            revert with 0, 18
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _193 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
               value msg.value - (msg.value / 100 / _taxFee) / arg2.length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _193 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _207 = mem[100]
                require mem[100] >= 32
                _215 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _217 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 0, 65
                _219 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_219] = mem[mem[132] + 132]
                require _215 + _217 + 164 <= _207 + 132
                idx = 0
                while idx < _217:
                    mem[idx + _219 + 32] = mem[idx + _215 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_217) <= _217:
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _266 = mem[_219]
                    mem[mem[64] + 36] = mem[_219]
                    idx = 0
                    while idx < _266:
                        mem[idx + _253 + 68] = mem[idx + _219 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_266) > _266:
                        mem[_253 + _266 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_266) + _253 + -mem[64] + 68
                mem[_219 + _217 + 32] = 0
                _260 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _268 = mem[_219]
                mem[mem[64] + 36] = mem[_219]
                idx = 0
                while idx < _268:
                    mem[idx + _260 + 68] = mem[idx + _219 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_268) > _268:
                    mem[_260 + _268 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_268) + _260 + -mem[64] + 68
            _200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_200] = return_data.size
            mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _200
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _208 = Mask(224, 0, return_data.size), mem[_200 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_200 + 32 len 4] >= 32
            _216 = mem[_200 + 36]
            require mem[_200 + 36] <= test266151307()
            require _200 + mem[_200 + 36] + 67 < _200 + Mask(224, 0, return_data.size), mem[_200 + 32 len 4] + 36
            _218 = mem[_200 + mem[_200 + 36] + 36]
            if mem[_200 + mem[_200 + 36] + 36] > test266151307():
                revert with 0, 65
            _220 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1
            mem[_220] = _218
            require _216 + _218 + 68 <= _208 + 36
            idx = 0
            while idx < _218:
                mem[idx + _220 + 32] = mem[idx + _200 + _216 + 68]
                idx = idx + 32
                continue 
            if ceil32(_218) <= _218:
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _218
                idx = 0
                while idx < _218:
                    mem[idx + _254 + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_218) > _218:
                    mem[_254 + _218 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_218) + _254 + -mem[64] + 68
            mem[_220 + _218 + 32] = 0
            _261 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _218
            idx = 0
            while idx < _218:
                mem[idx + _261 + 68] = mem[idx + _220 + 32]
                idx = idx + 32
                continue 
            if ceil32(_218) > _218:
                mem[_261 + _218 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_218) + _261 + -mem[64] + 68
        _179 = mem[64]
        mem[mem[64]] = 32
        _180 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _180:
            mem[t] = u + -_179 - 64
            _248 = mem[s]
            _252 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _252:
                mem[v + u + 32] = mem[v + _248 + 32]
                v = v + 32
                continue 
            if ceil32(_252) > _252:
                mem[u + _252 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_252) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if setTaxFeePercent(uint256 arg1) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require msg.sender == stor0
        _taxFee = cd[4]
    if unknown_0x3b124fe7(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return _taxFee
    if unknown_0x5a4ff679(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require msg.sender == stor0
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require unknown_0x9083911a(?????) == uint32(call.func_hash) >> 224
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[128] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        if not _taxFee:
            revert with 0, 18
        if not 100 / _taxFee:
            revert with 0, 18
        if msg.value < msg.value / 100 / _taxFee:
            revert with 0, 17
        if not ('cd', 36).length:
            revert with 0, 18
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            _96 = mem[64]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
               value msg.value - (msg.value / 100 / _taxFee) / ('cd', 36).length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + _96 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _104 = mem[100]
                require mem[100] >= 32
                _106 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _108 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 0, 65
                _110 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_110] = mem[mem[132] + 132]
                require _106 + _108 + 164 <= _104 + 132
                idx = 0
                while idx < _108:
                    mem[idx + _110 + 32] = mem[idx + _106 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_108) <= _108:
                    _184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _190 = mem[_110]
                    mem[mem[64] + 36] = mem[_110]
                    idx = 0
                    while idx < _190:
                        mem[idx + _184 + 68] = mem[idx + _110 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_190) > _190:
                        mem[_184 + _190 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_190) + _184 + -mem[64] + 68
                mem[_110 + _108 + 32] = 0
                _187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _194 = mem[_110]
                mem[mem[64] + 36] = mem[_110]
                idx = 0
                while idx < _194:
                    mem[idx + _187 + 68] = mem[idx + _110 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_194) > _194:
                    mem[_187 + _194 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_194) + _187 + -mem[64] + 68
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_99] = return_data.size
            mem[_99 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _99
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _105 = Mask(224, 0, return_data.size), mem[_99 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_99 + 32 len 4] >= 32
            _107 = mem[_99 + 36]
            require mem[_99 + 36] <= test266151307()
            require _99 + mem[_99 + 36] + 67 < _99 + Mask(224, 0, return_data.size), mem[_99 + 32 len 4] + 36
            _109 = mem[_99 + mem[_99 + 36] + 36]
            if mem[_99 + mem[_99 + 36] + 36] > test266151307():
                revert with 0, 65
            _111 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1
            mem[_111] = _109
            require _107 + _109 + 68 <= _105 + 36
            idx = 0
            while idx < _109:
                mem[idx + _111 + 32] = mem[idx + _99 + _107 + 68]
                idx = idx + 32
                continue 
            if ceil32(_109) <= _109:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _109
                idx = 0
                while idx < _109:
                    mem[idx + _185 + 68] = mem[idx + _111 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_109) > _109:
                    mem[_185 + _109 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_109) + _185 + -mem[64] + 68
            mem[_111 + _109 + 32] = 0
            _188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _109
            idx = 0
            while idx < _109:
                mem[idx + _188 + 68] = mem[idx + _111 + 32]
                idx = idx + 32
                continue 
            if ceil32(_109) > _109:
                mem[_188 + _109 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_109) + _188 + -mem[64] + 68
        _91 = mem[64]
        mem[mem[64]] = 32
        _92 = mem[128]
        mem[mem[64] + 32] = mem[128]
        idx = 0
        s = 160
        t = mem[64] + 64
        u = mem[64] + (32 * _92) + 64
        while idx < _92:
            mem[t] = u + -_91 - 64
            _177 = mem[s]
            _181 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _181:
                mem[v + u + 32] = mem[v + _177 + 32]
                v = v + 32
                continue 
            if ceil32(_181) > _181:
                mem[u + _181 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_181) + u + 32
            continue 
    else:
        mem[160] = 96
        s = 160
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if not _taxFee:
            revert with 0, 18
        if not 100 / _taxFee:
            revert with 0, 18
        if msg.value < msg.value / 100 / _taxFee:
            revert with 0, 17
        if not ('cd', 36).length:
            revert with 0, 18
        idx = 0
        while idx < ('cd', 36).length:
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call address(cd[4]) with:
               value msg.value - (msg.value / 100 / _taxFee) / ('cd', 36).length wei
                 gas gas_remaining wei
                args call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _210 = mem[100]
                require mem[100] >= 32
                _218 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _220 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 0, 65
                _222 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_222] = mem[mem[132] + 132]
                require _218 + _220 + 164 <= _210 + 132
                idx = 0
                while idx < _220:
                    mem[idx + _222 + 32] = mem[idx + _218 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_220) <= _220:
                    _256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _269 = mem[_222]
                    mem[mem[64] + 36] = mem[_222]
                    idx = 0
                    while idx < _269:
                        mem[idx + _256 + 68] = mem[idx + _222 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_269) > _269:
                        mem[_256 + _269 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_269) + _256 + -mem[64] + 68
                mem[_222 + _220 + 32] = 0
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _271 = mem[_222]
                mem[mem[64] + 36] = mem[_222]
                idx = 0
                while idx < _271:
                    mem[idx + _263 + 68] = mem[idx + _222 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_271) > _271:
                    mem[_263 + _271 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_271) + _263 + -mem[64] + 68
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_203] = return_data.size
            mem[_203 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[128]:
                    revert with 0, 50
                mem[(32 * idx) + 160] = _203
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _211 = Mask(224, 0, return_data.size), mem[_203 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_203 + 32 len 4] >= 32
            _219 = mem[_203 + 36]
            require mem[_203 + 36] <= test266151307()
            require _203 + mem[_203 + 36] + 67 < _203 + Mask(224, 0, return_data.size), mem[_203 + 32 len 4] + 36
            _221 = mem[_203 + mem[_203 + 36] + 36]
            if mem[_203 + mem[_203 + 36] + 36] > test266151307():
                revert with 0, 65
            _223 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_203 + mem[_203 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_203 + mem[_203 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_203 + mem[_203 + 36] + 36])) + 1
            mem[_223] = _221
            require _219 + _221 + 68 <= _211 + 36
            idx = 0
            while idx < _221:
                mem[idx + _223 + 32] = mem[idx + _203 + _219 + 68]
                idx = idx + 32
                continue 
            if ceil32(_221) <= _221:
                _257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _221
                idx = 0
                while idx < _221:
                    mem[idx + _257 + 68] = mem[idx + _223 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_221) > _221:
                    mem[_257 + _221 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_221) + _257 + -mem[64] + 68
            mem[_223 + _221 + 32] = 0
            _264 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _221
            idx = 0
            while idx < _221:
                mem[idx + _264 + 68] = mem[idx + _223 + 32]
                idx = idx + 32
                continue 
            if ceil32(_221) > _221:
                mem[_264 + _221 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_221) + _264 + -mem[64] + 68
        _182 = mem[64]
        mem[mem[64]] = 32
        _183 = mem[128]
        mem[mem[64] + 32] = mem[128]
        idx = 0
        s = 160
        t = mem[64] + 64
        u = mem[64] + (32 * _183) + 64
        while idx < _183:
            mem[t] = u + -_182 - 64
            _251 = mem[s]
            _255 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _255:
                mem[v + u + 32] = mem[v + _251 + 32]
                v = v + 32
                continue 
            if ceil32(_255) > _255:
                mem[u + _255 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_255) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
