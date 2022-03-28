contract main {




// =====================  Runtime code  =====================


#
#  - sub_6778e3b8(?)
#
address stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setPaths(address[][] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require arg1 + cd[s] + 67 < calldata.size
        require cd[(arg1 + cd[s] + 36)] <= test266151307()
        _15 = mem[64]
        require mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(arg1 + cd[s] + 36)]) + 32
        mem[_15] = cd[(arg1 + cd[s] + 36)]
        require arg1 + cd[s] + (32 * cd[(arg1 + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = arg1 + cd[s] + 68
        w = _15 + 32
        while u < cd[(arg1 + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _15
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        stor1.length++
        mem[0] = 1
        _26 = mem[mem[(32 * idx) + 128]]
        stor1[stor1.length] = mem[mem[(32 * idx) + 128]]
        mem[0] = stor1.length + sha3(1)
        if not _26:
            s = sha3(stor1.length + sha3(1))
            while sha3(stor1.length + sha3(1)) + stor1[stor1.length] > s:
                stor[s] = 0
                s = s + 1
                continue 
        else:
            s = sha3(stor1.length + sha3(1))
            t = mem[(32 * idx) + 128] + 32
            while mem[(32 * idx) + 128] + (32 * _26) + 32 > t:
                stor[s] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                continue 
            t = s
            while sha3(stor1.length + sha3(1)) + stor1[stor1.length] > t:
                stor[t] = 0
                t = t + 1
                continue 
        idx = idx + 1
        continue 
}

function sub_7262e880(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _919 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_919] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _919 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _919
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _2174 = mem[96]
    idx = 0
    while idx < _2174:
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2178 = mem[_2177]
        require mem[_2177] == mem[_2177]
        require idx < mem[96]
        require 0 < mem[mem[(32 * idx) + 128]]
        _2182 = mem[mem[(32 * idx) + 128] + 32]
        require idx < mem[96]
        require 1 < mem[mem[(32 * idx) + 128]]
        _2186 = mem[mem[(32 * idx) + 128] + 64]
        if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
        if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
            if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
            _2190 = mem[64]
            mem[mem[64] + 32] = address(mem[mem[(32 * idx) + 128] + 32])
            mem[mem[64] + 52] = address(_2186)
            _2195 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _2197 = sha3(mem[_2195 + 32 len mem[_2195]])
            mem[_2190 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_2190 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
            mem[_2190 + 125] = _2197
            mem[_2190 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
            mem[_2190 + 72] = 85
            mem[_2190 + 193] = address(sha3(0, 17269419903419772280, _2197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
            mem[_2190 + 225] = _2178
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sha3(0, 17269419903419772280, _2197, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), _2178
            mem[_2190 + 189] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2190 + ceil32(return_data.size) + 189
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require idx < mem[96]
            _2219 = mem[(32 * idx) + 128]
            _2221 = mem[mem[(32 * idx) + 128]]
            mem[_2190 + ceil32(return_data.size) + 189] = mem[mem[(32 * idx) + 128]]
            mem[64] = _2190 + ceil32(return_data.size) + (32 * _2221) + 221
            if not _2221:
                require 0 < mem[_2190 + ceil32(return_data.size) + 189]
                mem[_2190 + ceil32(return_data.size) + 221] = _2178
                _5701 = mem[_2219]
                s = 0
                while s < _5701 - 1:
                    require s < mem[_2219]
                    _5710 = mem[(32 * s) + _2219 + 32]
                    require s + 1 < mem[_2219]
                    _5722 = mem[(32 * s + 1) + _2219 + 32]
                    if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                        if not mem[(32 * s) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                            if not mem[(32 * s) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5842 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5722)
                            _6213 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6215 = sha3(mem[_6213 + 32 len mem[_6213]])
                            mem[_5842 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5842 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5842 + 125] = _6215
                            mem[_5842 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5842 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6215, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6215, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5842 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5842 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5843 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5710)
                            _6217 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6219 = sha3(mem[_6217 + 32 len mem[_6217]])
                            mem[_5843 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5843 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5843 + 125] = _6219
                            mem[_5843 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5843 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6219, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6219, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5843 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5843 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5710) == address(_5710):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                            if not mem[(32 * s) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5844 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5722)
                            _6221 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6223 = sha3(mem[_6221 + 32 len mem[_6221]])
                            mem[_5844 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5844 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5844 + 125] = _6223
                            mem[_5844 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5844 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6223, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6223, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5844 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5844 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5845 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5710)
                            _6225 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6227 = sha3(mem[_6225 + 32 len mem[_6225]])
                            mem[_5845 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5845 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5845 + 125] = _6227
                            mem[_5845 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5845 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6227, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6227, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5845 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5845 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5710) == address(_5722):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    s = s + 1
                    continue 
                require idx < mem[96]
                _5721 = mem[(32 * idx) + 128]
                _9173 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _9173 - 1:
                    require s < mem[_5721]
                    _9182 = mem[(32 * s) + _5721 + 32]
                    require s + 1 < mem[_5721]
                    _9193 = mem[(32 * s + 1) + _5721 + 32]
                    if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _5721 + 44 len 20] < mem[(32 * s + 1) + _5721 + 44 len 20]:
                        if not mem[(32 * s) + _5721 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                        _9218 = mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s) + _5721 + 44 len 20]:
                            if s >= mem[_5721] - 2:
                                if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5721 + 44 len 20] < mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    if not mem[(32 * s) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9395 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9577 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9579 = sha3(mem[_9577 + 32 len mem[_9577]])
                                    mem[_9395 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9395 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9395 + 125] = _9579
                                    mem[_9395 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9395 + 72] = 85
                                    mem[_9395 + 189] = 0
                                    mem[64] = _9395 + 221
                                    mem[_9395 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9395 + 225] = 0
                                    mem[_9395 + 257] = _9218
                                    mem[_9395 + 289] = this.address
                                    mem[_9395 + 321] = 128
                                    mem[_9395 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9395 + 385] = mem[idx + _9395 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9579, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9579, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9218, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9396 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9182)
                                    _9581 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9583 = sha3(mem[_9581 + 32 len mem[_9581]])
                                    mem[_9396 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9396 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9396 + 125] = _9583
                                    mem[_9396 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9396 + 72] = 85
                                    mem[_9396 + 189] = 0
                                    mem[64] = _9396 + 221
                                    mem[_9396 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9396 + 225] = 0
                                    mem[_9396 + 257] = _9218
                                    mem[_9396 + 289] = this.address
                                    mem[_9396 + 321] = 128
                                    mem[_9396 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9396 + 385] = mem[idx + _9396 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9583, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9583, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9218, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5721]
                                _9269 = mem[(32 * s + 2) + _5721 + 32]
                                if mem[(32 * s + 1) + _5721 + 44 len 20] == mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5721 + 44 len 20] < mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9393 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9269)
                                    _9569 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9571 = sha3(mem[_9569 + 32 len mem[_9569]])
                                    mem[_9393 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9393 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9393 + 125] = _9571
                                    mem[_9393 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9393 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9393 + 221] = address(_9182)
                                        mem[_9393 + 241] = address(_9193)
                                        mem[_9393 + 189] = 40
                                        mem[_9393 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9393 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9393 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9393 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9393 + 261] = 85
                                        mem[_9393 + 378] = 0
                                        mem[64] = _9393 + 410
                                        mem[_9393 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9393 + 414] = 0
                                        mem[_9393 + 446] = _9218
                                        mem[_9393 + 478] = address(sha3(0, 17269419903419772280, _9571, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9393 + 510] = 128
                                        mem[_9393 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9393 + 574] = mem[idx + _9393 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9218, address(sha3(0, 17269419903419772280, _9571, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9393 + 221] = address(_9193)
                                        mem[_9393 + 241] = address(_9182)
                                        mem[_9393 + 189] = 40
                                        mem[_9393 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9393 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9393 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9393 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9393 + 261] = 85
                                        mem[_9393 + 378] = 0
                                        mem[64] = _9393 + 410
                                        mem[_9393 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9393 + 414] = 0
                                        mem[_9393 + 446] = _9218
                                        mem[_9393 + 478] = address(sha3(0, 17269419903419772280, _9571, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9393 + 510] = 128
                                        mem[_9393 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9393 + 574] = mem[idx + _9393 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9218, address(sha3(0, 17269419903419772280, _9571, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9394 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9573 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9575 = sha3(mem[_9573 + 32 len mem[_9573]])
                                    mem[_9394 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9394 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9394 + 125] = _9575
                                    mem[_9394 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9394 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9394 + 221] = address(_9182)
                                        mem[_9394 + 241] = address(_9193)
                                        mem[_9394 + 189] = 40
                                        mem[_9394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9394 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9394 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9394 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9394 + 261] = 85
                                        mem[_9394 + 378] = 0
                                        mem[64] = _9394 + 410
                                        mem[_9394 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9394 + 414] = 0
                                        mem[_9394 + 446] = _9218
                                        mem[_9394 + 478] = address(sha3(0, 17269419903419772280, _9575, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9394 + 510] = 128
                                        mem[_9394 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9394 + 574] = mem[idx + _9394 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9218, address(sha3(0, 17269419903419772280, _9575, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9394 + 221] = address(_9193)
                                        mem[_9394 + 241] = address(_9182)
                                        mem[_9394 + 189] = 40
                                        mem[_9394 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9394 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9394 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9394 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9394 + 261] = 85
                                        mem[_9394 + 378] = 0
                                        mem[64] = _9394 + 410
                                        mem[_9394 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9394 + 414] = 0
                                        mem[_9394 + 446] = _9218
                                        mem[_9394 + 478] = address(sha3(0, 17269419903419772280, _9575, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9394 + 510] = 128
                                        mem[_9394 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9394 + 574] = mem[idx + _9394 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9218, address(sha3(0, 17269419903419772280, _9575, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5721] - 2:
                                if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5721 + 44 len 20] < mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    if not mem[(32 * s) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9399 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9593 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9595 = sha3(mem[_9593 + 32 len mem[_9593]])
                                    mem[_9399 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9399 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9399 + 125] = _9595
                                    mem[_9399 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9399 + 72] = 85
                                    mem[_9399 + 189] = 0
                                    mem[64] = _9399 + 221
                                    mem[_9399 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9399 + 225] = _9218
                                    mem[_9399 + 257] = 0
                                    mem[_9399 + 289] = this.address
                                    mem[_9399 + 321] = 128
                                    mem[_9399 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9399 + 385] = mem[idx + _9399 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9595, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9218, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9400 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9182)
                                    _9597 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9599 = sha3(mem[_9597 + 32 len mem[_9597]])
                                    mem[_9400 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9400 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9400 + 125] = _9599
                                    mem[_9400 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9400 + 72] = 85
                                    mem[_9400 + 189] = 0
                                    mem[64] = _9400 + 221
                                    mem[_9400 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9400 + 225] = _9218
                                    mem[_9400 + 257] = 0
                                    mem[_9400 + 289] = this.address
                                    mem[_9400 + 321] = 128
                                    mem[_9400 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9400 + 385] = mem[idx + _9400 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9599, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9599, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9218, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5721]
                                _9270 = mem[(32 * s + 2) + _5721 + 32]
                                if mem[(32 * s + 1) + _5721 + 44 len 20] == mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5721 + 44 len 20] < mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9397 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9270)
                                    _9585 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9587 = sha3(mem[_9585 + 32 len mem[_9585]])
                                    mem[_9397 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9397 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9397 + 125] = _9587
                                    mem[_9397 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9397 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9397 + 221] = address(_9182)
                                        mem[_9397 + 241] = address(_9193)
                                        mem[_9397 + 189] = 40
                                        mem[_9397 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9397 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9397 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9397 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9397 + 261] = 85
                                        mem[_9397 + 378] = 0
                                        mem[64] = _9397 + 410
                                        mem[_9397 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9397 + 414] = _9218
                                        mem[_9397 + 446] = 0
                                        mem[_9397 + 478] = address(sha3(0, 17269419903419772280, _9587, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9397 + 510] = 128
                                        mem[_9397 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9397 + 574] = mem[idx + _9397 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9218, 0, address(sha3(0, 17269419903419772280, _9587, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9397 + 221] = address(_9193)
                                        mem[_9397 + 241] = address(_9182)
                                        mem[_9397 + 189] = 40
                                        mem[_9397 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9397 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9397 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9397 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9397 + 261] = 85
                                        mem[_9397 + 378] = 0
                                        mem[64] = _9397 + 410
                                        mem[_9397 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9397 + 414] = _9218
                                        mem[_9397 + 446] = 0
                                        mem[_9397 + 478] = address(sha3(0, 17269419903419772280, _9587, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9397 + 510] = 128
                                        mem[_9397 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9397 + 574] = mem[idx + _9397 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9218, 0, address(sha3(0, 17269419903419772280, _9587, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9398 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9589 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9591 = sha3(mem[_9589 + 32 len mem[_9589]])
                                    mem[_9398 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9398 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9398 + 125] = _9591
                                    mem[_9398 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9398 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9398 + 221] = address(_9182)
                                        mem[_9398 + 241] = address(_9193)
                                        mem[_9398 + 189] = 40
                                        mem[_9398 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9398 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9398 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9398 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9398 + 261] = 85
                                        mem[_9398 + 378] = 0
                                        mem[64] = _9398 + 410
                                        mem[_9398 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9398 + 414] = _9218
                                        mem[_9398 + 446] = 0
                                        mem[_9398 + 478] = address(sha3(0, 17269419903419772280, _9591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9398 + 510] = 128
                                        mem[_9398 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9398 + 574] = mem[idx + _9398 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9218, 0, address(sha3(0, 17269419903419772280, _9591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9398 + 221] = address(_9193)
                                        mem[_9398 + 241] = address(_9182)
                                        mem[_9398 + 189] = 40
                                        mem[_9398 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9398 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9398 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9398 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9398 + 261] = 85
                                        mem[_9398 + 378] = 0
                                        mem[64] = _9398 + 410
                                        mem[_9398 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9398 + 414] = _9218
                                        mem[_9398 + 446] = 0
                                        mem[_9398 + 478] = address(sha3(0, 17269419903419772280, _9591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9398 + 510] = 128
                                        mem[_9398 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9398 + 574] = mem[idx + _9398 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9218, 0, address(sha3(0, 17269419903419772280, _9591, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    else:
                        if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                        _9219 = mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                            if s >= mem[_5721] - 2:
                                if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5721 + 44 len 20] < mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    if not mem[(32 * s) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9403 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9609 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9611 = sha3(mem[_9609 + 32 len mem[_9609]])
                                    mem[_9403 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9403 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9403 + 125] = _9611
                                    mem[_9403 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9403 + 72] = 85
                                    mem[_9403 + 189] = 0
                                    mem[64] = _9403 + 221
                                    mem[_9403 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9403 + 225] = 0
                                    mem[_9403 + 257] = _9219
                                    mem[_9403 + 289] = this.address
                                    mem[_9403 + 321] = 128
                                    mem[_9403 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9403 + 385] = mem[idx + _9403 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9611, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9611, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9219, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9404 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9182)
                                    _9613 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9615 = sha3(mem[_9613 + 32 len mem[_9613]])
                                    mem[_9404 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9404 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9404 + 125] = _9615
                                    mem[_9404 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9404 + 72] = 85
                                    mem[_9404 + 189] = 0
                                    mem[64] = _9404 + 221
                                    mem[_9404 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9404 + 225] = 0
                                    mem[_9404 + 257] = _9219
                                    mem[_9404 + 289] = this.address
                                    mem[_9404 + 321] = 128
                                    mem[_9404 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9404 + 385] = mem[idx + _9404 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9615, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9615, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9219, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5721]
                                _9272 = mem[(32 * s + 2) + _5721 + 32]
                                if mem[(32 * s + 1) + _5721 + 44 len 20] == mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5721 + 44 len 20] < mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9401 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9272)
                                    _9601 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9603 = sha3(mem[_9601 + 32 len mem[_9601]])
                                    mem[_9401 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9401 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9401 + 125] = _9603
                                    mem[_9401 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9401 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9401 + 221] = address(_9182)
                                        mem[_9401 + 241] = address(_9193)
                                        mem[_9401 + 189] = 40
                                        mem[_9401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9401 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9401 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9401 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9401 + 261] = 85
                                        mem[_9401 + 378] = 0
                                        mem[64] = _9401 + 410
                                        mem[_9401 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9401 + 414] = 0
                                        mem[_9401 + 446] = _9219
                                        mem[_9401 + 478] = address(sha3(0, 17269419903419772280, _9603, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9401 + 510] = 128
                                        mem[_9401 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9401 + 574] = mem[idx + _9401 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9219, address(sha3(0, 17269419903419772280, _9603, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9401 + 221] = address(_9193)
                                        mem[_9401 + 241] = address(_9182)
                                        mem[_9401 + 189] = 40
                                        mem[_9401 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9401 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9401 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9401 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9401 + 261] = 85
                                        mem[_9401 + 378] = 0
                                        mem[64] = _9401 + 410
                                        mem[_9401 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9401 + 414] = 0
                                        mem[_9401 + 446] = _9219
                                        mem[_9401 + 478] = address(sha3(0, 17269419903419772280, _9603, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9401 + 510] = 128
                                        mem[_9401 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9401 + 574] = mem[idx + _9401 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9219, address(sha3(0, 17269419903419772280, _9603, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9402 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9605 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9607 = sha3(mem[_9605 + 32 len mem[_9605]])
                                    mem[_9402 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9402 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9402 + 125] = _9607
                                    mem[_9402 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9402 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9402 + 221] = address(_9182)
                                        mem[_9402 + 241] = address(_9193)
                                        mem[_9402 + 189] = 40
                                        mem[_9402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9402 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9402 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9402 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9402 + 261] = 85
                                        mem[_9402 + 378] = 0
                                        mem[64] = _9402 + 410
                                        mem[_9402 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9402 + 414] = 0
                                        mem[_9402 + 446] = _9219
                                        mem[_9402 + 478] = address(sha3(0, 17269419903419772280, _9607, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9402 + 510] = 128
                                        mem[_9402 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9402 + 574] = mem[idx + _9402 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9219, address(sha3(0, 17269419903419772280, _9607, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9402 + 221] = address(_9193)
                                        mem[_9402 + 241] = address(_9182)
                                        mem[_9402 + 189] = 40
                                        mem[_9402 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9402 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9402 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9402 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9402 + 261] = 85
                                        mem[_9402 + 378] = 0
                                        mem[64] = _9402 + 410
                                        mem[_9402 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9402 + 414] = 0
                                        mem[_9402 + 446] = _9219
                                        mem[_9402 + 478] = address(sha3(0, 17269419903419772280, _9607, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9402 + 510] = 128
                                        mem[_9402 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9402 + 574] = mem[idx + _9402 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9219, address(sha3(0, 17269419903419772280, _9607, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5721] - 2:
                                if mem[(32 * s) + _5721 + 44 len 20] == mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5721 + 44 len 20] < mem[(32 * s + 1) + _5721 + 44 len 20]:
                                    if not mem[(32 * s) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9407 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9625 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9627 = sha3(mem[_9625 + 32 len mem[_9625]])
                                    mem[_9407 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9407 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9407 + 125] = _9627
                                    mem[_9407 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9407 + 72] = 85
                                    mem[_9407 + 189] = 0
                                    mem[64] = _9407 + 221
                                    mem[_9407 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9407 + 225] = _9219
                                    mem[_9407 + 257] = 0
                                    mem[_9407 + 289] = this.address
                                    mem[_9407 + 321] = 128
                                    mem[_9407 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9407 + 385] = mem[idx + _9407 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9627, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9627, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9219, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9408 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9182)
                                    _9629 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9631 = sha3(mem[_9629 + 32 len mem[_9629]])
                                    mem[_9408 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9408 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9408 + 125] = _9631
                                    mem[_9408 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9408 + 72] = 85
                                    mem[_9408 + 189] = 0
                                    mem[64] = _9408 + 221
                                    mem[_9408 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9408 + 225] = _9219
                                    mem[_9408 + 257] = 0
                                    mem[_9408 + 289] = this.address
                                    mem[_9408 + 321] = 128
                                    mem[_9408 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9408 + 385] = mem[idx + _9408 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9631, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9631, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9219, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5721]
                                _9273 = mem[(32 * s + 2) + _5721 + 32]
                                if mem[(32 * s + 1) + _5721 + 44 len 20] == mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5721 + 44 len 20] < mem[(32 * s + 2) + _5721 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9405 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9273)
                                    _9617 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9619 = sha3(mem[_9617 + 32 len mem[_9617]])
                                    mem[_9405 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9405 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9405 + 125] = _9619
                                    mem[_9405 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9405 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9405 + 221] = address(_9182)
                                        mem[_9405 + 241] = address(_9193)
                                        mem[_9405 + 189] = 40
                                        mem[_9405 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9405 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9405 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9405 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9405 + 261] = 85
                                        mem[_9405 + 378] = 0
                                        mem[64] = _9405 + 410
                                        mem[_9405 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9405 + 414] = _9219
                                        mem[_9405 + 446] = 0
                                        mem[_9405 + 478] = address(sha3(0, 17269419903419772280, _9619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9405 + 510] = 128
                                        mem[_9405 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9405 + 574] = mem[idx + _9405 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9219, 0, address(sha3(0, 17269419903419772280, _9619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9405 + 221] = address(_9193)
                                        mem[_9405 + 241] = address(_9182)
                                        mem[_9405 + 189] = 40
                                        mem[_9405 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9405 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9405 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9405 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9405 + 261] = 85
                                        mem[_9405 + 378] = 0
                                        mem[64] = _9405 + 410
                                        mem[_9405 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9405 + 414] = _9219
                                        mem[_9405 + 446] = 0
                                        mem[_9405 + 478] = address(sha3(0, 17269419903419772280, _9619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9405 + 510] = 128
                                        mem[_9405 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9405 + 574] = mem[idx + _9405 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9219, 0, address(sha3(0, 17269419903419772280, _9619, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5721 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9406 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5721 + 32])
                                    mem[mem[64] + 52] = address(_9193)
                                    _9621 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9623 = sha3(mem[_9621 + 32 len mem[_9621]])
                                    mem[_9406 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9406 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9406 + 125] = _9623
                                    mem[_9406 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9406 + 72] = 85
                                    if address(_9182) == address(_9193):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9182) < address(_9193):
                                        if not address(_9182):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9406 + 221] = address(_9182)
                                        mem[_9406 + 241] = address(_9193)
                                        mem[_9406 + 189] = 40
                                        mem[_9406 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9406 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9406 + 314] = sha3(address(_9182), address(_9193))
                                        mem[_9406 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9406 + 261] = 85
                                        mem[_9406 + 378] = 0
                                        mem[64] = _9406 + 410
                                        mem[_9406 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9406 + 414] = _9219
                                        mem[_9406 + 446] = 0
                                        mem[_9406 + 478] = address(sha3(0, 17269419903419772280, _9623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9406 + 510] = 128
                                        mem[_9406 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9406 + 574] = mem[idx + _9406 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9182), address(_9193)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9219, 0, address(sha3(0, 17269419903419772280, _9623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9193):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9406 + 221] = address(_9193)
                                        mem[_9406 + 241] = address(_9182)
                                        mem[_9406 + 189] = 40
                                        mem[_9406 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9406 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9406 + 314] = sha3(address(_9193), address(_9182))
                                        mem[_9406 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9406 + 261] = 85
                                        mem[_9406 + 378] = 0
                                        mem[64] = _9406 + 410
                                        mem[_9406 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9406 + 414] = _9219
                                        mem[_9406 + 446] = 0
                                        mem[_9406 + 478] = address(sha3(0, 17269419903419772280, _9623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9406 + 510] = 128
                                        mem[_9406 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9406 + 574] = mem[idx + _9406 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9193), address(_9182)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9219, 0, address(sha3(0, 17269419903419772280, _9623, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9233] == mem[_9233]
                if _2178 + 10^17 < _2178:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_9233] <= _2178 + 10^17:
                    revert with 0, 'not good'
            else:
                mem[_2190 + ceil32(return_data.size) + 221 len 32 * _2221] = code.data[6505 len 32 * _2221]
                require 0 < mem[_2190 + ceil32(return_data.size) + 189]
                mem[_2190 + ceil32(return_data.size) + 221] = _2178
                _5702 = mem[_2219]
                s = 0
                while s < _5702 - 1:
                    require s < mem[_2219]
                    _5713 = mem[(32 * s) + _2219 + 32]
                    require s + 1 < mem[_2219]
                    _5724 = mem[(32 * s + 1) + _2219 + 32]
                    if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                        if not mem[(32 * s) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                            if not mem[(32 * s) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5851 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5724)
                            _6229 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6231 = sha3(mem[_6229 + 32 len mem[_6229]])
                            mem[_5851 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5851 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5851 + 125] = _6231
                            mem[_5851 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5851 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6231, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6231, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5851 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5851 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5852 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5713)
                            _6233 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6235 = sha3(mem[_6233 + 32 len mem[_6233]])
                            mem[_5852 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5852 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5852 + 125] = _6235
                            mem[_5852 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5852 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6235, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6235, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5852 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5852 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5713) == address(_5713):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2219 + 44 len 20] == mem[(32 * s + 1) + _2219 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2219 + 44 len 20] < mem[(32 * s + 1) + _2219 + 44 len 20]:
                            if not mem[(32 * s) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5853 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5724)
                            _6237 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6239 = sha3(mem[_6237 + 32 len mem[_6237]])
                            mem[_5853 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5853 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5853 + 125] = _6239
                            mem[_5853 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5853 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6239, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6239, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5853 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5853 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2219 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5854 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2219 + 32])
                            mem[mem[64] + 52] = address(_5713)
                            _6241 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6243 = sha3(mem[_6241 + 32 len mem[_6241]])
                            mem[_5854 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5854 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5854 + 125] = _6243
                            mem[_5854 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5854 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6243, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6243, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5854 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5854 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5713) == address(_5724):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2190 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2190 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    s = s + 1
                    continue 
                require idx < mem[96]
                _5723 = mem[(32 * idx) + 128]
                _9174 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _9174 - 1:
                    require s < mem[_5723]
                    _9185 = mem[(32 * s) + _5723 + 32]
                    require s + 1 < mem[_5723]
                    _9194 = mem[(32 * s + 1) + _5723 + 32]
                    if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _5723 + 44 len 20] < mem[(32 * s + 1) + _5723 + 44 len 20]:
                        if not mem[(32 * s) + _5723 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                        _9221 = mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s) + _5723 + 44 len 20]:
                            if s >= mem[_5723] - 2:
                                if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5723 + 44 len 20] < mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    if not mem[(32 * s) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9411 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9641 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9643 = sha3(mem[_9641 + 32 len mem[_9641]])
                                    mem[_9411 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9411 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9411 + 125] = _9643
                                    mem[_9411 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9411 + 72] = 85
                                    mem[_9411 + 189] = 0
                                    mem[64] = _9411 + 221
                                    mem[_9411 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9411 + 225] = 0
                                    mem[_9411 + 257] = _9221
                                    mem[_9411 + 289] = this.address
                                    mem[_9411 + 321] = 128
                                    mem[_9411 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9411 + 385] = mem[idx + _9411 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9643, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9643, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9221, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9412 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9185)
                                    _9645 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9647 = sha3(mem[_9645 + 32 len mem[_9645]])
                                    mem[_9412 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9412 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9412 + 125] = _9647
                                    mem[_9412 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9412 + 72] = 85
                                    mem[_9412 + 189] = 0
                                    mem[64] = _9412 + 221
                                    mem[_9412 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9412 + 225] = 0
                                    mem[_9412 + 257] = _9221
                                    mem[_9412 + 289] = this.address
                                    mem[_9412 + 321] = 128
                                    mem[_9412 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9412 + 385] = mem[idx + _9412 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9647, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9647, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9221, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5723]
                                _9275 = mem[(32 * s + 2) + _5723 + 32]
                                if mem[(32 * s + 1) + _5723 + 44 len 20] == mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5723 + 44 len 20] < mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9409 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9275)
                                    _9633 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9635 = sha3(mem[_9633 + 32 len mem[_9633]])
                                    mem[_9409 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9409 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9409 + 125] = _9635
                                    mem[_9409 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9409 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9409 + 221] = address(_9185)
                                        mem[_9409 + 241] = address(_9194)
                                        mem[_9409 + 189] = 40
                                        mem[_9409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9409 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9409 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9409 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9409 + 261] = 85
                                        mem[_9409 + 378] = 0
                                        mem[64] = _9409 + 410
                                        mem[_9409 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9409 + 414] = 0
                                        mem[_9409 + 446] = _9221
                                        mem[_9409 + 478] = address(sha3(0, 17269419903419772280, _9635, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9409 + 510] = 128
                                        mem[_9409 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9409 + 574] = mem[idx + _9409 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9221, address(sha3(0, 17269419903419772280, _9635, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9409 + 221] = address(_9194)
                                        mem[_9409 + 241] = address(_9185)
                                        mem[_9409 + 189] = 40
                                        mem[_9409 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9409 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9409 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9409 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9409 + 261] = 85
                                        mem[_9409 + 378] = 0
                                        mem[64] = _9409 + 410
                                        mem[_9409 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9409 + 414] = 0
                                        mem[_9409 + 446] = _9221
                                        mem[_9409 + 478] = address(sha3(0, 17269419903419772280, _9635, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9409 + 510] = 128
                                        mem[_9409 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9409 + 574] = mem[idx + _9409 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9221, address(sha3(0, 17269419903419772280, _9635, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9410 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9637 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9639 = sha3(mem[_9637 + 32 len mem[_9637]])
                                    mem[_9410 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9410 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9410 + 125] = _9639
                                    mem[_9410 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9410 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9410 + 221] = address(_9185)
                                        mem[_9410 + 241] = address(_9194)
                                        mem[_9410 + 189] = 40
                                        mem[_9410 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9410 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9410 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9410 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9410 + 261] = 85
                                        mem[_9410 + 378] = 0
                                        mem[64] = _9410 + 410
                                        mem[_9410 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9410 + 414] = 0
                                        mem[_9410 + 446] = _9221
                                        mem[_9410 + 478] = address(sha3(0, 17269419903419772280, _9639, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9410 + 510] = 128
                                        mem[_9410 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9410 + 574] = mem[idx + _9410 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9221, address(sha3(0, 17269419903419772280, _9639, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9410 + 221] = address(_9194)
                                        mem[_9410 + 241] = address(_9185)
                                        mem[_9410 + 189] = 40
                                        mem[_9410 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9410 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9410 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9410 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9410 + 261] = 85
                                        mem[_9410 + 378] = 0
                                        mem[64] = _9410 + 410
                                        mem[_9410 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9410 + 414] = 0
                                        mem[_9410 + 446] = _9221
                                        mem[_9410 + 478] = address(sha3(0, 17269419903419772280, _9639, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9410 + 510] = 128
                                        mem[_9410 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9410 + 574] = mem[idx + _9410 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9221, address(sha3(0, 17269419903419772280, _9639, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5723] - 2:
                                if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5723 + 44 len 20] < mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    if not mem[(32 * s) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9415 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9657 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9659 = sha3(mem[_9657 + 32 len mem[_9657]])
                                    mem[_9415 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9415 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9415 + 125] = _9659
                                    mem[_9415 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9415 + 72] = 85
                                    mem[_9415 + 189] = 0
                                    mem[64] = _9415 + 221
                                    mem[_9415 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9415 + 225] = _9221
                                    mem[_9415 + 257] = 0
                                    mem[_9415 + 289] = this.address
                                    mem[_9415 + 321] = 128
                                    mem[_9415 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9415 + 385] = mem[idx + _9415 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9659, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9659, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9221, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9416 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9185)
                                    _9661 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9663 = sha3(mem[_9661 + 32 len mem[_9661]])
                                    mem[_9416 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9416 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9416 + 125] = _9663
                                    mem[_9416 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9416 + 72] = 85
                                    mem[_9416 + 189] = 0
                                    mem[64] = _9416 + 221
                                    mem[_9416 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9416 + 225] = _9221
                                    mem[_9416 + 257] = 0
                                    mem[_9416 + 289] = this.address
                                    mem[_9416 + 321] = 128
                                    mem[_9416 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9416 + 385] = mem[idx + _9416 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9663, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9663, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9221, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5723]
                                _9276 = mem[(32 * s + 2) + _5723 + 32]
                                if mem[(32 * s + 1) + _5723 + 44 len 20] == mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5723 + 44 len 20] < mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9413 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9276)
                                    _9649 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9651 = sha3(mem[_9649 + 32 len mem[_9649]])
                                    mem[_9413 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9413 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9413 + 125] = _9651
                                    mem[_9413 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9413 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9413 + 221] = address(_9185)
                                        mem[_9413 + 241] = address(_9194)
                                        mem[_9413 + 189] = 40
                                        mem[_9413 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9413 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9413 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9413 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9413 + 261] = 85
                                        mem[_9413 + 378] = 0
                                        mem[64] = _9413 + 410
                                        mem[_9413 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9413 + 414] = _9221
                                        mem[_9413 + 446] = 0
                                        mem[_9413 + 478] = address(sha3(0, 17269419903419772280, _9651, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9413 + 510] = 128
                                        mem[_9413 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9413 + 574] = mem[idx + _9413 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9221, 0, address(sha3(0, 17269419903419772280, _9651, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9413 + 221] = address(_9194)
                                        mem[_9413 + 241] = address(_9185)
                                        mem[_9413 + 189] = 40
                                        mem[_9413 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9413 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9413 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9413 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9413 + 261] = 85
                                        mem[_9413 + 378] = 0
                                        mem[64] = _9413 + 410
                                        mem[_9413 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9413 + 414] = _9221
                                        mem[_9413 + 446] = 0
                                        mem[_9413 + 478] = address(sha3(0, 17269419903419772280, _9651, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9413 + 510] = 128
                                        mem[_9413 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9413 + 574] = mem[idx + _9413 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9221, 0, address(sha3(0, 17269419903419772280, _9651, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9414 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9653 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9655 = sha3(mem[_9653 + 32 len mem[_9653]])
                                    mem[_9414 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9414 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9414 + 125] = _9655
                                    mem[_9414 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9414 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9414 + 221] = address(_9185)
                                        mem[_9414 + 241] = address(_9194)
                                        mem[_9414 + 189] = 40
                                        mem[_9414 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9414 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9414 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9414 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9414 + 261] = 85
                                        mem[_9414 + 378] = 0
                                        mem[64] = _9414 + 410
                                        mem[_9414 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9414 + 414] = _9221
                                        mem[_9414 + 446] = 0
                                        mem[_9414 + 478] = address(sha3(0, 17269419903419772280, _9655, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9414 + 510] = 128
                                        mem[_9414 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9414 + 574] = mem[idx + _9414 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9221, 0, address(sha3(0, 17269419903419772280, _9655, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9414 + 221] = address(_9194)
                                        mem[_9414 + 241] = address(_9185)
                                        mem[_9414 + 189] = 40
                                        mem[_9414 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9414 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9414 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9414 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9414 + 261] = 85
                                        mem[_9414 + 378] = 0
                                        mem[64] = _9414 + 410
                                        mem[_9414 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9414 + 414] = _9221
                                        mem[_9414 + 446] = 0
                                        mem[_9414 + 478] = address(sha3(0, 17269419903419772280, _9655, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9414 + 510] = 128
                                        mem[_9414 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9414 + 574] = mem[idx + _9414 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9221, 0, address(sha3(0, 17269419903419772280, _9655, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    else:
                        if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2190 + ceil32(return_data.size) + 189]
                        _9222 = mem[(32 * s + 1) + _2190 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                            if s >= mem[_5723] - 2:
                                if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5723 + 44 len 20] < mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    if not mem[(32 * s) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9419 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9673 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9675 = sha3(mem[_9673 + 32 len mem[_9673]])
                                    mem[_9419 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9419 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9419 + 125] = _9675
                                    mem[_9419 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9419 + 72] = 85
                                    mem[_9419 + 189] = 0
                                    mem[64] = _9419 + 221
                                    mem[_9419 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9419 + 225] = 0
                                    mem[_9419 + 257] = _9222
                                    mem[_9419 + 289] = this.address
                                    mem[_9419 + 321] = 128
                                    mem[_9419 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9419 + 385] = mem[idx + _9419 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9675, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9675, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9222, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9420 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9185)
                                    _9677 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9679 = sha3(mem[_9677 + 32 len mem[_9677]])
                                    mem[_9420 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9420 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9420 + 125] = _9679
                                    mem[_9420 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9420 + 72] = 85
                                    mem[_9420 + 189] = 0
                                    mem[64] = _9420 + 221
                                    mem[_9420 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9420 + 225] = 0
                                    mem[_9420 + 257] = _9222
                                    mem[_9420 + 289] = this.address
                                    mem[_9420 + 321] = 128
                                    mem[_9420 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9420 + 385] = mem[idx + _9420 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9679, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9679, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9222, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5723]
                                _9278 = mem[(32 * s + 2) + _5723 + 32]
                                if mem[(32 * s + 1) + _5723 + 44 len 20] == mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5723 + 44 len 20] < mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9417 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9278)
                                    _9665 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9667 = sha3(mem[_9665 + 32 len mem[_9665]])
                                    mem[_9417 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9417 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9417 + 125] = _9667
                                    mem[_9417 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9417 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9417 + 221] = address(_9185)
                                        mem[_9417 + 241] = address(_9194)
                                        mem[_9417 + 189] = 40
                                        mem[_9417 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9417 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9417 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9417 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9417 + 261] = 85
                                        mem[_9417 + 378] = 0
                                        mem[64] = _9417 + 410
                                        mem[_9417 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9417 + 414] = 0
                                        mem[_9417 + 446] = _9222
                                        mem[_9417 + 478] = address(sha3(0, 17269419903419772280, _9667, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9417 + 510] = 128
                                        mem[_9417 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9417 + 574] = mem[idx + _9417 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9222, address(sha3(0, 17269419903419772280, _9667, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9417 + 221] = address(_9194)
                                        mem[_9417 + 241] = address(_9185)
                                        mem[_9417 + 189] = 40
                                        mem[_9417 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9417 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9417 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9417 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9417 + 261] = 85
                                        mem[_9417 + 378] = 0
                                        mem[64] = _9417 + 410
                                        mem[_9417 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9417 + 414] = 0
                                        mem[_9417 + 446] = _9222
                                        mem[_9417 + 478] = address(sha3(0, 17269419903419772280, _9667, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9417 + 510] = 128
                                        mem[_9417 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9417 + 574] = mem[idx + _9417 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9222, address(sha3(0, 17269419903419772280, _9667, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9418 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9669 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9671 = sha3(mem[_9669 + 32 len mem[_9669]])
                                    mem[_9418 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9418 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9418 + 125] = _9671
                                    mem[_9418 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9418 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9418 + 221] = address(_9185)
                                        mem[_9418 + 241] = address(_9194)
                                        mem[_9418 + 189] = 40
                                        mem[_9418 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9418 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9418 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9418 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9418 + 261] = 85
                                        mem[_9418 + 378] = 0
                                        mem[64] = _9418 + 410
                                        mem[_9418 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9418 + 414] = 0
                                        mem[_9418 + 446] = _9222
                                        mem[_9418 + 478] = address(sha3(0, 17269419903419772280, _9671, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9418 + 510] = 128
                                        mem[_9418 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9418 + 574] = mem[idx + _9418 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9222, address(sha3(0, 17269419903419772280, _9671, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9418 + 221] = address(_9194)
                                        mem[_9418 + 241] = address(_9185)
                                        mem[_9418 + 189] = 40
                                        mem[_9418 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9418 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9418 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9418 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9418 + 261] = 85
                                        mem[_9418 + 378] = 0
                                        mem[64] = _9418 + 410
                                        mem[_9418 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9418 + 414] = 0
                                        mem[_9418 + 446] = _9222
                                        mem[_9418 + 478] = address(sha3(0, 17269419903419772280, _9671, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9418 + 510] = 128
                                        mem[_9418 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9418 + 574] = mem[idx + _9418 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9222, address(sha3(0, 17269419903419772280, _9671, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5723] - 2:
                                if mem[(32 * s) + _5723 + 44 len 20] == mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5723 + 44 len 20] < mem[(32 * s + 1) + _5723 + 44 len 20]:
                                    if not mem[(32 * s) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9423 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9689 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9691 = sha3(mem[_9689 + 32 len mem[_9689]])
                                    mem[_9423 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9423 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9423 + 125] = _9691
                                    mem[_9423 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9423 + 72] = 85
                                    mem[_9423 + 189] = 0
                                    mem[64] = _9423 + 221
                                    mem[_9423 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9423 + 225] = _9222
                                    mem[_9423 + 257] = 0
                                    mem[_9423 + 289] = this.address
                                    mem[_9423 + 321] = 128
                                    mem[_9423 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9423 + 385] = mem[idx + _9423 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9691, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9691, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9222, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9424 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9185)
                                    _9693 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9695 = sha3(mem[_9693 + 32 len mem[_9693]])
                                    mem[_9424 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9424 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9424 + 125] = _9695
                                    mem[_9424 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9424 + 72] = 85
                                    mem[_9424 + 189] = 0
                                    mem[64] = _9424 + 221
                                    mem[_9424 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9424 + 225] = _9222
                                    mem[_9424 + 257] = 0
                                    mem[_9424 + 289] = this.address
                                    mem[_9424 + 321] = 128
                                    mem[_9424 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9424 + 385] = mem[idx + _9424 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9695, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9695, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9222, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5723]
                                _9279 = mem[(32 * s + 2) + _5723 + 32]
                                if mem[(32 * s + 1) + _5723 + 44 len 20] == mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5723 + 44 len 20] < mem[(32 * s + 2) + _5723 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9421 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9279)
                                    _9681 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9683 = sha3(mem[_9681 + 32 len mem[_9681]])
                                    mem[_9421 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9421 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9421 + 125] = _9683
                                    mem[_9421 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9421 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9421 + 221] = address(_9185)
                                        mem[_9421 + 241] = address(_9194)
                                        mem[_9421 + 189] = 40
                                        mem[_9421 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9421 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9421 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9421 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9421 + 261] = 85
                                        mem[_9421 + 378] = 0
                                        mem[64] = _9421 + 410
                                        mem[_9421 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9421 + 414] = _9222
                                        mem[_9421 + 446] = 0
                                        mem[_9421 + 478] = address(sha3(0, 17269419903419772280, _9683, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9421 + 510] = 128
                                        mem[_9421 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9421 + 574] = mem[idx + _9421 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9222, 0, address(sha3(0, 17269419903419772280, _9683, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9421 + 221] = address(_9194)
                                        mem[_9421 + 241] = address(_9185)
                                        mem[_9421 + 189] = 40
                                        mem[_9421 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9421 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9421 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9421 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9421 + 261] = 85
                                        mem[_9421 + 378] = 0
                                        mem[64] = _9421 + 410
                                        mem[_9421 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9421 + 414] = _9222
                                        mem[_9421 + 446] = 0
                                        mem[_9421 + 478] = address(sha3(0, 17269419903419772280, _9683, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9421 + 510] = 128
                                        mem[_9421 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9421 + 574] = mem[idx + _9421 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9222, 0, address(sha3(0, 17269419903419772280, _9683, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5723 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9422 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5723 + 32])
                                    mem[mem[64] + 52] = address(_9194)
                                    _9685 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9687 = sha3(mem[_9685 + 32 len mem[_9685]])
                                    mem[_9422 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9422 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9422 + 125] = _9687
                                    mem[_9422 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9422 + 72] = 85
                                    if address(_9185) == address(_9194):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9185) < address(_9194):
                                        if not address(_9185):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9422 + 221] = address(_9185)
                                        mem[_9422 + 241] = address(_9194)
                                        mem[_9422 + 189] = 40
                                        mem[_9422 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9422 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9422 + 314] = sha3(address(_9185), address(_9194))
                                        mem[_9422 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9422 + 261] = 85
                                        mem[_9422 + 378] = 0
                                        mem[64] = _9422 + 410
                                        mem[_9422 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9422 + 414] = _9222
                                        mem[_9422 + 446] = 0
                                        mem[_9422 + 478] = address(sha3(0, 17269419903419772280, _9687, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9422 + 510] = 128
                                        mem[_9422 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9422 + 574] = mem[idx + _9422 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9185), address(_9194)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9222, 0, address(sha3(0, 17269419903419772280, _9687, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9194):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9422 + 221] = address(_9194)
                                        mem[_9422 + 241] = address(_9185)
                                        mem[_9422 + 189] = 40
                                        mem[_9422 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9422 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9422 + 314] = sha3(address(_9194), address(_9185))
                                        mem[_9422 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9422 + 261] = 85
                                        mem[_9422 + 378] = 0
                                        mem[64] = _9422 + 410
                                        mem[_9422 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9422 + 414] = _9222
                                        mem[_9422 + 446] = 0
                                        mem[_9422 + 478] = address(sha3(0, 17269419903419772280, _9687, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9422 + 510] = 128
                                        mem[_9422 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9422 + 574] = mem[idx + _9422 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9194), address(_9185)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9222, 0, address(sha3(0, 17269419903419772280, _9687, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9238] == mem[_9238]
                if _2178 + 10^17 < _2178:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_9238] <= _2178 + 10^17:
                    revert with 0, 'not good'
        else:
            if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
            _2191 = mem[64]
            mem[mem[64] + 32] = address(mem[mem[(32 * idx) + 128] + 64])
            mem[mem[64] + 52] = address(_2182)
            _2199 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _2201 = sha3(mem[_2199 + 32 len mem[_2199]])
            mem[_2191 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_2191 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
            mem[_2191 + 125] = _2201
            mem[_2191 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
            mem[_2191 + 72] = 85
            mem[_2191 + 193] = address(sha3(0, 17269419903419772280, _2201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
            mem[_2191 + 225] = _2178
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
                 gas gas_remaining wei
                args address(sha3(0, 17269419903419772280, _2201, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), _2178
            mem[_2191 + 189] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2191 + ceil32(return_data.size) + 189
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require idx < mem[96]
            _2220 = mem[(32 * idx) + 128]
            _2223 = mem[mem[(32 * idx) + 128]]
            mem[_2191 + ceil32(return_data.size) + 189] = mem[mem[(32 * idx) + 128]]
            mem[64] = _2191 + ceil32(return_data.size) + (32 * _2223) + 221
            if not _2223:
                require 0 < mem[_2191 + ceil32(return_data.size) + 189]
                mem[_2191 + ceil32(return_data.size) + 221] = _2178
                _5703 = mem[_2220]
                s = 0
                while s < _5703 - 1:
                    require s < mem[_2220]
                    _5716 = mem[(32 * s) + _2220 + 32]
                    require s + 1 < mem[_2220]
                    _5726 = mem[(32 * s + 1) + _2220 + 32]
                    if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                        if not mem[(32 * s) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                            if not mem[(32 * s) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5860 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5726)
                            _6245 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6247 = sha3(mem[_6245 + 32 len mem[_6245]])
                            mem[_5860 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5860 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5860 + 125] = _6247
                            mem[_5860 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5860 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6247, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6247, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5860 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5860 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5861 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5716)
                            _6249 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6251 = sha3(mem[_6249 + 32 len mem[_6249]])
                            mem[_5861 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5861 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5861 + 125] = _6251
                            mem[_5861 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5861 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6251, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6251, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5861 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5861 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5716) == address(_5716):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                            if not mem[(32 * s) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5862 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5726)
                            _6253 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6255 = sha3(mem[_6253 + 32 len mem[_6253]])
                            mem[_5862 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5862 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5862 + 125] = _6255
                            mem[_5862 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5862 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6255, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6255, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5862 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5862 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5863 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5716)
                            _6257 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6259 = sha3(mem[_6257 + 32 len mem[_6257]])
                            mem[_5863 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5863 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5863 + 125] = _6259
                            mem[_5863 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5863 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6259, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6259, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5863 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5863 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5716) == address(_5726):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    s = s + 1
                    continue 
                require idx < mem[96]
                _5725 = mem[(32 * idx) + 128]
                _9175 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _9175 - 1:
                    require s < mem[_5725]
                    _9188 = mem[(32 * s) + _5725 + 32]
                    require s + 1 < mem[_5725]
                    _9195 = mem[(32 * s + 1) + _5725 + 32]
                    if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _5725 + 44 len 20] < mem[(32 * s + 1) + _5725 + 44 len 20]:
                        if not mem[(32 * s) + _5725 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                        _9224 = mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s) + _5725 + 44 len 20]:
                            if s >= mem[_5725] - 2:
                                if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5725 + 44 len 20] < mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    if not mem[(32 * s) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9427 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9705 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9707 = sha3(mem[_9705 + 32 len mem[_9705]])
                                    mem[_9427 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9427 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9427 + 125] = _9707
                                    mem[_9427 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9427 + 72] = 85
                                    mem[_9427 + 189] = 0
                                    mem[64] = _9427 + 221
                                    mem[_9427 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9427 + 225] = 0
                                    mem[_9427 + 257] = _9224
                                    mem[_9427 + 289] = this.address
                                    mem[_9427 + 321] = 128
                                    mem[_9427 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9427 + 385] = mem[idx + _9427 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9707, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9707, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9224, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9428 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9188)
                                    _9709 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9711 = sha3(mem[_9709 + 32 len mem[_9709]])
                                    mem[_9428 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9428 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9428 + 125] = _9711
                                    mem[_9428 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9428 + 72] = 85
                                    mem[_9428 + 189] = 0
                                    mem[64] = _9428 + 221
                                    mem[_9428 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9428 + 225] = 0
                                    mem[_9428 + 257] = _9224
                                    mem[_9428 + 289] = this.address
                                    mem[_9428 + 321] = 128
                                    mem[_9428 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9428 + 385] = mem[idx + _9428 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9711, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9711, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9224, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5725]
                                _9281 = mem[(32 * s + 2) + _5725 + 32]
                                if mem[(32 * s + 1) + _5725 + 44 len 20] == mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5725 + 44 len 20] < mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9425 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9281)
                                    _9697 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9699 = sha3(mem[_9697 + 32 len mem[_9697]])
                                    mem[_9425 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9425 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9425 + 125] = _9699
                                    mem[_9425 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9425 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9425 + 221] = address(_9188)
                                        mem[_9425 + 241] = address(_9195)
                                        mem[_9425 + 189] = 40
                                        mem[_9425 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9425 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9425 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9425 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9425 + 261] = 85
                                        mem[_9425 + 378] = 0
                                        mem[64] = _9425 + 410
                                        mem[_9425 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9425 + 414] = 0
                                        mem[_9425 + 446] = _9224
                                        mem[_9425 + 478] = address(sha3(0, 17269419903419772280, _9699, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9425 + 510] = 128
                                        mem[_9425 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9425 + 574] = mem[idx + _9425 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9224, address(sha3(0, 17269419903419772280, _9699, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9425 + 221] = address(_9195)
                                        mem[_9425 + 241] = address(_9188)
                                        mem[_9425 + 189] = 40
                                        mem[_9425 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9425 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9425 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9425 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9425 + 261] = 85
                                        mem[_9425 + 378] = 0
                                        mem[64] = _9425 + 410
                                        mem[_9425 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9425 + 414] = 0
                                        mem[_9425 + 446] = _9224
                                        mem[_9425 + 478] = address(sha3(0, 17269419903419772280, _9699, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9425 + 510] = 128
                                        mem[_9425 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9425 + 574] = mem[idx + _9425 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9224, address(sha3(0, 17269419903419772280, _9699, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9426 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9701 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9703 = sha3(mem[_9701 + 32 len mem[_9701]])
                                    mem[_9426 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9426 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9426 + 125] = _9703
                                    mem[_9426 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9426 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9426 + 221] = address(_9188)
                                        mem[_9426 + 241] = address(_9195)
                                        mem[_9426 + 189] = 40
                                        mem[_9426 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9426 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9426 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9426 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9426 + 261] = 85
                                        mem[_9426 + 378] = 0
                                        mem[64] = _9426 + 410
                                        mem[_9426 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9426 + 414] = 0
                                        mem[_9426 + 446] = _9224
                                        mem[_9426 + 478] = address(sha3(0, 17269419903419772280, _9703, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9426 + 510] = 128
                                        mem[_9426 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9426 + 574] = mem[idx + _9426 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9224, address(sha3(0, 17269419903419772280, _9703, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9426 + 221] = address(_9195)
                                        mem[_9426 + 241] = address(_9188)
                                        mem[_9426 + 189] = 40
                                        mem[_9426 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9426 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9426 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9426 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9426 + 261] = 85
                                        mem[_9426 + 378] = 0
                                        mem[64] = _9426 + 410
                                        mem[_9426 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9426 + 414] = 0
                                        mem[_9426 + 446] = _9224
                                        mem[_9426 + 478] = address(sha3(0, 17269419903419772280, _9703, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9426 + 510] = 128
                                        mem[_9426 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9426 + 574] = mem[idx + _9426 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9224, address(sha3(0, 17269419903419772280, _9703, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5725] - 2:
                                if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5725 + 44 len 20] < mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    if not mem[(32 * s) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9431 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9721 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9723 = sha3(mem[_9721 + 32 len mem[_9721]])
                                    mem[_9431 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9431 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9431 + 125] = _9723
                                    mem[_9431 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9431 + 72] = 85
                                    mem[_9431 + 189] = 0
                                    mem[64] = _9431 + 221
                                    mem[_9431 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9431 + 225] = _9224
                                    mem[_9431 + 257] = 0
                                    mem[_9431 + 289] = this.address
                                    mem[_9431 + 321] = 128
                                    mem[_9431 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9431 + 385] = mem[idx + _9431 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9723, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9723, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9224, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9432 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9188)
                                    _9725 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9727 = sha3(mem[_9725 + 32 len mem[_9725]])
                                    mem[_9432 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9432 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9432 + 125] = _9727
                                    mem[_9432 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9432 + 72] = 85
                                    mem[_9432 + 189] = 0
                                    mem[64] = _9432 + 221
                                    mem[_9432 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9432 + 225] = _9224
                                    mem[_9432 + 257] = 0
                                    mem[_9432 + 289] = this.address
                                    mem[_9432 + 321] = 128
                                    mem[_9432 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9432 + 385] = mem[idx + _9432 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9727, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9727, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9224, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5725]
                                _9282 = mem[(32 * s + 2) + _5725 + 32]
                                if mem[(32 * s + 1) + _5725 + 44 len 20] == mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5725 + 44 len 20] < mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9429 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9282)
                                    _9713 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9715 = sha3(mem[_9713 + 32 len mem[_9713]])
                                    mem[_9429 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9429 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9429 + 125] = _9715
                                    mem[_9429 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9429 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9429 + 221] = address(_9188)
                                        mem[_9429 + 241] = address(_9195)
                                        mem[_9429 + 189] = 40
                                        mem[_9429 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9429 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9429 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9429 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9429 + 261] = 85
                                        mem[_9429 + 378] = 0
                                        mem[64] = _9429 + 410
                                        mem[_9429 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9429 + 414] = _9224
                                        mem[_9429 + 446] = 0
                                        mem[_9429 + 478] = address(sha3(0, 17269419903419772280, _9715, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9429 + 510] = 128
                                        mem[_9429 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9429 + 574] = mem[idx + _9429 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9224, 0, address(sha3(0, 17269419903419772280, _9715, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9429 + 221] = address(_9195)
                                        mem[_9429 + 241] = address(_9188)
                                        mem[_9429 + 189] = 40
                                        mem[_9429 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9429 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9429 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9429 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9429 + 261] = 85
                                        mem[_9429 + 378] = 0
                                        mem[64] = _9429 + 410
                                        mem[_9429 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9429 + 414] = _9224
                                        mem[_9429 + 446] = 0
                                        mem[_9429 + 478] = address(sha3(0, 17269419903419772280, _9715, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9429 + 510] = 128
                                        mem[_9429 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9429 + 574] = mem[idx + _9429 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9224, 0, address(sha3(0, 17269419903419772280, _9715, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9430 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9717 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9719 = sha3(mem[_9717 + 32 len mem[_9717]])
                                    mem[_9430 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9430 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9430 + 125] = _9719
                                    mem[_9430 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9430 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9430 + 221] = address(_9188)
                                        mem[_9430 + 241] = address(_9195)
                                        mem[_9430 + 189] = 40
                                        mem[_9430 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9430 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9430 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9430 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9430 + 261] = 85
                                        mem[_9430 + 378] = 0
                                        mem[64] = _9430 + 410
                                        mem[_9430 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9430 + 414] = _9224
                                        mem[_9430 + 446] = 0
                                        mem[_9430 + 478] = address(sha3(0, 17269419903419772280, _9719, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9430 + 510] = 128
                                        mem[_9430 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9430 + 574] = mem[idx + _9430 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9224, 0, address(sha3(0, 17269419903419772280, _9719, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9430 + 221] = address(_9195)
                                        mem[_9430 + 241] = address(_9188)
                                        mem[_9430 + 189] = 40
                                        mem[_9430 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9430 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9430 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9430 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9430 + 261] = 85
                                        mem[_9430 + 378] = 0
                                        mem[64] = _9430 + 410
                                        mem[_9430 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9430 + 414] = _9224
                                        mem[_9430 + 446] = 0
                                        mem[_9430 + 478] = address(sha3(0, 17269419903419772280, _9719, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9430 + 510] = 128
                                        mem[_9430 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9430 + 574] = mem[idx + _9430 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9224, 0, address(sha3(0, 17269419903419772280, _9719, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    else:
                        if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                        _9225 = mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                            if s >= mem[_5725] - 2:
                                if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5725 + 44 len 20] < mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    if not mem[(32 * s) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9435 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9737 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9739 = sha3(mem[_9737 + 32 len mem[_9737]])
                                    mem[_9435 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9435 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9435 + 125] = _9739
                                    mem[_9435 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9435 + 72] = 85
                                    mem[_9435 + 189] = 0
                                    mem[64] = _9435 + 221
                                    mem[_9435 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9435 + 225] = 0
                                    mem[_9435 + 257] = _9225
                                    mem[_9435 + 289] = this.address
                                    mem[_9435 + 321] = 128
                                    mem[_9435 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9435 + 385] = mem[idx + _9435 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9739, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9739, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9225, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9436 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9188)
                                    _9741 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9743 = sha3(mem[_9741 + 32 len mem[_9741]])
                                    mem[_9436 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9436 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9436 + 125] = _9743
                                    mem[_9436 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9436 + 72] = 85
                                    mem[_9436 + 189] = 0
                                    mem[64] = _9436 + 221
                                    mem[_9436 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9436 + 225] = 0
                                    mem[_9436 + 257] = _9225
                                    mem[_9436 + 289] = this.address
                                    mem[_9436 + 321] = 128
                                    mem[_9436 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9436 + 385] = mem[idx + _9436 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9743, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9743, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9225, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5725]
                                _9284 = mem[(32 * s + 2) + _5725 + 32]
                                if mem[(32 * s + 1) + _5725 + 44 len 20] == mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5725 + 44 len 20] < mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9433 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9284)
                                    _9729 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9731 = sha3(mem[_9729 + 32 len mem[_9729]])
                                    mem[_9433 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9433 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9433 + 125] = _9731
                                    mem[_9433 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9433 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9433 + 221] = address(_9188)
                                        mem[_9433 + 241] = address(_9195)
                                        mem[_9433 + 189] = 40
                                        mem[_9433 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9433 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9433 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9433 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9433 + 261] = 85
                                        mem[_9433 + 378] = 0
                                        mem[64] = _9433 + 410
                                        mem[_9433 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9433 + 414] = 0
                                        mem[_9433 + 446] = _9225
                                        mem[_9433 + 478] = address(sha3(0, 17269419903419772280, _9731, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9433 + 510] = 128
                                        mem[_9433 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9433 + 574] = mem[idx + _9433 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9225, address(sha3(0, 17269419903419772280, _9731, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9433 + 221] = address(_9195)
                                        mem[_9433 + 241] = address(_9188)
                                        mem[_9433 + 189] = 40
                                        mem[_9433 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9433 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9433 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9433 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9433 + 261] = 85
                                        mem[_9433 + 378] = 0
                                        mem[64] = _9433 + 410
                                        mem[_9433 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9433 + 414] = 0
                                        mem[_9433 + 446] = _9225
                                        mem[_9433 + 478] = address(sha3(0, 17269419903419772280, _9731, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9433 + 510] = 128
                                        mem[_9433 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9433 + 574] = mem[idx + _9433 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9225, address(sha3(0, 17269419903419772280, _9731, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9434 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9733 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9735 = sha3(mem[_9733 + 32 len mem[_9733]])
                                    mem[_9434 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9434 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9434 + 125] = _9735
                                    mem[_9434 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9434 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9434 + 221] = address(_9188)
                                        mem[_9434 + 241] = address(_9195)
                                        mem[_9434 + 189] = 40
                                        mem[_9434 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9434 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9434 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9434 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9434 + 261] = 85
                                        mem[_9434 + 378] = 0
                                        mem[64] = _9434 + 410
                                        mem[_9434 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9434 + 414] = 0
                                        mem[_9434 + 446] = _9225
                                        mem[_9434 + 478] = address(sha3(0, 17269419903419772280, _9735, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9434 + 510] = 128
                                        mem[_9434 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9434 + 574] = mem[idx + _9434 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9225, address(sha3(0, 17269419903419772280, _9735, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9434 + 221] = address(_9195)
                                        mem[_9434 + 241] = address(_9188)
                                        mem[_9434 + 189] = 40
                                        mem[_9434 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9434 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9434 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9434 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9434 + 261] = 85
                                        mem[_9434 + 378] = 0
                                        mem[64] = _9434 + 410
                                        mem[_9434 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9434 + 414] = 0
                                        mem[_9434 + 446] = _9225
                                        mem[_9434 + 478] = address(sha3(0, 17269419903419772280, _9735, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9434 + 510] = 128
                                        mem[_9434 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9434 + 574] = mem[idx + _9434 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9225, address(sha3(0, 17269419903419772280, _9735, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5725] - 2:
                                if mem[(32 * s) + _5725 + 44 len 20] == mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5725 + 44 len 20] < mem[(32 * s + 1) + _5725 + 44 len 20]:
                                    if not mem[(32 * s) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9439 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9753 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9755 = sha3(mem[_9753 + 32 len mem[_9753]])
                                    mem[_9439 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9439 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9439 + 125] = _9755
                                    mem[_9439 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9439 + 72] = 85
                                    mem[_9439 + 189] = 0
                                    mem[64] = _9439 + 221
                                    mem[_9439 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9439 + 225] = _9225
                                    mem[_9439 + 257] = 0
                                    mem[_9439 + 289] = this.address
                                    mem[_9439 + 321] = 128
                                    mem[_9439 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9439 + 385] = mem[idx + _9439 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9755, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9755, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9225, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9440 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9188)
                                    _9757 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9759 = sha3(mem[_9757 + 32 len mem[_9757]])
                                    mem[_9440 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9440 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9440 + 125] = _9759
                                    mem[_9440 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9440 + 72] = 85
                                    mem[_9440 + 189] = 0
                                    mem[64] = _9440 + 221
                                    mem[_9440 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9440 + 225] = _9225
                                    mem[_9440 + 257] = 0
                                    mem[_9440 + 289] = this.address
                                    mem[_9440 + 321] = 128
                                    mem[_9440 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9440 + 385] = mem[idx + _9440 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9759, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9759, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9225, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5725]
                                _9285 = mem[(32 * s + 2) + _5725 + 32]
                                if mem[(32 * s + 1) + _5725 + 44 len 20] == mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5725 + 44 len 20] < mem[(32 * s + 2) + _5725 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9437 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9285)
                                    _9745 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9747 = sha3(mem[_9745 + 32 len mem[_9745]])
                                    mem[_9437 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9437 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9437 + 125] = _9747
                                    mem[_9437 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9437 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9437 + 221] = address(_9188)
                                        mem[_9437 + 241] = address(_9195)
                                        mem[_9437 + 189] = 40
                                        mem[_9437 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9437 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9437 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9437 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9437 + 261] = 85
                                        mem[_9437 + 378] = 0
                                        mem[64] = _9437 + 410
                                        mem[_9437 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9437 + 414] = _9225
                                        mem[_9437 + 446] = 0
                                        mem[_9437 + 478] = address(sha3(0, 17269419903419772280, _9747, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9437 + 510] = 128
                                        mem[_9437 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9437 + 574] = mem[idx + _9437 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9225, 0, address(sha3(0, 17269419903419772280, _9747, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9437 + 221] = address(_9195)
                                        mem[_9437 + 241] = address(_9188)
                                        mem[_9437 + 189] = 40
                                        mem[_9437 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9437 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9437 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9437 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9437 + 261] = 85
                                        mem[_9437 + 378] = 0
                                        mem[64] = _9437 + 410
                                        mem[_9437 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9437 + 414] = _9225
                                        mem[_9437 + 446] = 0
                                        mem[_9437 + 478] = address(sha3(0, 17269419903419772280, _9747, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9437 + 510] = 128
                                        mem[_9437 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9437 + 574] = mem[idx + _9437 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9225, 0, address(sha3(0, 17269419903419772280, _9747, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5725 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9438 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5725 + 32])
                                    mem[mem[64] + 52] = address(_9195)
                                    _9749 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9751 = sha3(mem[_9749 + 32 len mem[_9749]])
                                    mem[_9438 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9438 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9438 + 125] = _9751
                                    mem[_9438 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9438 + 72] = 85
                                    if address(_9188) == address(_9195):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9188) < address(_9195):
                                        if not address(_9188):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9438 + 221] = address(_9188)
                                        mem[_9438 + 241] = address(_9195)
                                        mem[_9438 + 189] = 40
                                        mem[_9438 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9438 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9438 + 314] = sha3(address(_9188), address(_9195))
                                        mem[_9438 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9438 + 261] = 85
                                        mem[_9438 + 378] = 0
                                        mem[64] = _9438 + 410
                                        mem[_9438 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9438 + 414] = _9225
                                        mem[_9438 + 446] = 0
                                        mem[_9438 + 478] = address(sha3(0, 17269419903419772280, _9751, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9438 + 510] = 128
                                        mem[_9438 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9438 + 574] = mem[idx + _9438 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9188), address(_9195)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9225, 0, address(sha3(0, 17269419903419772280, _9751, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9195):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9438 + 221] = address(_9195)
                                        mem[_9438 + 241] = address(_9188)
                                        mem[_9438 + 189] = 40
                                        mem[_9438 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9438 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9438 + 314] = sha3(address(_9195), address(_9188))
                                        mem[_9438 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9438 + 261] = 85
                                        mem[_9438 + 378] = 0
                                        mem[64] = _9438 + 410
                                        mem[_9438 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9438 + 414] = _9225
                                        mem[_9438 + 446] = 0
                                        mem[_9438 + 478] = address(sha3(0, 17269419903419772280, _9751, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9438 + 510] = 128
                                        mem[_9438 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9438 + 574] = mem[idx + _9438 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9195), address(_9188)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9225, 0, address(sha3(0, 17269419903419772280, _9751, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9243] == mem[_9243]
                if _2178 + 10^17 < _2178:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_9243] <= _2178 + 10^17:
                    revert with 0, 'not good'
            else:
                mem[_2191 + ceil32(return_data.size) + 221 len 32 * _2223] = code.data[6505 len 32 * _2223]
                require 0 < mem[_2191 + ceil32(return_data.size) + 189]
                mem[_2191 + ceil32(return_data.size) + 221] = _2178
                _5704 = mem[_2220]
                s = 0
                while s < _5704 - 1:
                    require s < mem[_2220]
                    _5719 = mem[(32 * s) + _2220 + 32]
                    require s + 1 < mem[_2220]
                    _5728 = mem[(32 * s + 1) + _2220 + 32]
                    if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                        if not mem[(32 * s) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                            if not mem[(32 * s) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5869 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5728)
                            _6261 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6263 = sha3(mem[_6261 + 32 len mem[_6261]])
                            mem[_5869 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5869 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5869 + 125] = _6263
                            mem[_5869 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5869 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6263, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6263, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5869 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5869 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5870 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5719)
                            _6265 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6267 = sha3(mem[_6265 + 32 len mem[_6265]])
                            mem[_5870 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5870 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5870 + 125] = _6267
                            mem[_5870 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5870 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6267, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6267, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5870 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5870 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5719) == address(_5719):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    else:
                        if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        if mem[(32 * s) + _2220 + 44 len 20] == mem[(32 * s + 1) + _2220 + 44 len 20]:
                            revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * s) + _2220 + 44 len 20] < mem[(32 * s + 1) + _2220 + 44 len 20]:
                            if not mem[(32 * s) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5871 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5728)
                            _6269 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6271 = sha3(mem[_6269 + 32 len mem[_6269]])
                            mem[_5871 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5871 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5871 + 125] = _6271
                            mem[_5871 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5871 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6271, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6271, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5871 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5871 + ceil32(return_data.size) + 189
                        else:
                            if not mem[(32 * s + 1) + _2220 + 44 len 20]:
                                revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                            _5872 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * s + 1) + _2220 + 32])
                            mem[mem[64] + 52] = address(_5719)
                            _6273 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _6275 = sha3(mem[_6273 + 32 len mem[_6273]])
                            mem[_5872 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_5872 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                            mem[_5872 + 125] = _6275
                            mem[_5872 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                            mem[_5872 + 72] = 85
                            require ext_code.size(address(sha3(0, 17269419903419772280, _6275, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                            staticcall address(sha3(0, 17269419903419772280, _6275, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_5872 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5872 + ceil32(return_data.size) + 189
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if address(_5719) == address(_5728):
                            if ext_call.return_data[18 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[18 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[50 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[18 len 14]
                                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[18 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[18 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[50 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[18 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[50 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                            else:
                                if ext_call.return_data[18 len 14] <= 0:
                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                else:
                                    require s < mem[_2191 + ceil32(return_data.size) + 189]
                                    if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                        mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                    else:
                                        if not ext_call.return_data[50 len 14]:
                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                        else:
                                            if not ext_call.return_data[18 len 14]:
                                                require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0
                                            else:
                                                if not mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                    require ext_call.return_data[50 len 14]
                                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    require 1000 * ext_call.return_data[50 len 14]
                                                    require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                    mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 1000 * ext_call.return_data[50 len 14]
                                                else:
                                                    if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != 997:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if not 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]:
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 0 / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                    else:
                                                        if 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] != ext_call.return_data[18 len 14]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        if not ext_call.return_data[50 len 14]:
                                                            if 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] < 0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / 997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]
                                                        else:
                                                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            if (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            require (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                                                            require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                                                            mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221] = 997 * ext_call.return_data[18 len 14] * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221] / (997 * mem[(32 * s) + _2191 + ceil32(return_data.size) + 221]) + (1000 * ext_call.return_data[50 len 14])
                    s = s + 1
                    continue 
                require idx < mem[96]
                _5727 = mem[(32 * idx) + 128]
                _9176 = mem[mem[(32 * idx) + 128]]
                s = 0
                while s < _9176 - 1:
                    require s < mem[_5727]
                    _9191 = mem[(32 * s) + _5727 + 32]
                    require s + 1 < mem[_5727]
                    _9196 = mem[(32 * s + 1) + _5727 + 32]
                    if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _5727 + 44 len 20] < mem[(32 * s + 1) + _5727 + 44 len 20]:
                        if not mem[(32 * s) + _5727 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                        _9227 = mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s) + _5727 + 44 len 20]:
                            if s >= mem[_5727] - 2:
                                if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5727 + 44 len 20] < mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    if not mem[(32 * s) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9443 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9769 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9771 = sha3(mem[_9769 + 32 len mem[_9769]])
                                    mem[_9443 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9443 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9443 + 125] = _9771
                                    mem[_9443 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9443 + 72] = 85
                                    mem[_9443 + 189] = 0
                                    mem[64] = _9443 + 221
                                    mem[_9443 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9443 + 225] = 0
                                    mem[_9443 + 257] = _9227
                                    mem[_9443 + 289] = this.address
                                    mem[_9443 + 321] = 128
                                    mem[_9443 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9443 + 385] = mem[idx + _9443 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9771, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9771, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9227, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9444 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9191)
                                    _9773 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9775 = sha3(mem[_9773 + 32 len mem[_9773]])
                                    mem[_9444 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9444 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9444 + 125] = _9775
                                    mem[_9444 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9444 + 72] = 85
                                    mem[_9444 + 189] = 0
                                    mem[64] = _9444 + 221
                                    mem[_9444 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9444 + 225] = 0
                                    mem[_9444 + 257] = _9227
                                    mem[_9444 + 289] = this.address
                                    mem[_9444 + 321] = 128
                                    mem[_9444 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9444 + 385] = mem[idx + _9444 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9775, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9775, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9227, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5727]
                                _9287 = mem[(32 * s + 2) + _5727 + 32]
                                if mem[(32 * s + 1) + _5727 + 44 len 20] == mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5727 + 44 len 20] < mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9441 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9287)
                                    _9761 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9763 = sha3(mem[_9761 + 32 len mem[_9761]])
                                    mem[_9441 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9441 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9441 + 125] = _9763
                                    mem[_9441 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9441 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9441 + 221] = address(_9191)
                                        mem[_9441 + 241] = address(_9196)
                                        mem[_9441 + 189] = 40
                                        mem[_9441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9441 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9441 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9441 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9441 + 261] = 85
                                        mem[_9441 + 378] = 0
                                        mem[64] = _9441 + 410
                                        mem[_9441 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9441 + 414] = 0
                                        mem[_9441 + 446] = _9227
                                        mem[_9441 + 478] = address(sha3(0, 17269419903419772280, _9763, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9441 + 510] = 128
                                        mem[_9441 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9441 + 574] = mem[idx + _9441 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9227, address(sha3(0, 17269419903419772280, _9763, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9441 + 221] = address(_9196)
                                        mem[_9441 + 241] = address(_9191)
                                        mem[_9441 + 189] = 40
                                        mem[_9441 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9441 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9441 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9441 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9441 + 261] = 85
                                        mem[_9441 + 378] = 0
                                        mem[64] = _9441 + 410
                                        mem[_9441 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9441 + 414] = 0
                                        mem[_9441 + 446] = _9227
                                        mem[_9441 + 478] = address(sha3(0, 17269419903419772280, _9763, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9441 + 510] = 128
                                        mem[_9441 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9441 + 574] = mem[idx + _9441 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9227, address(sha3(0, 17269419903419772280, _9763, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9442 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9765 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9767 = sha3(mem[_9765 + 32 len mem[_9765]])
                                    mem[_9442 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9442 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9442 + 125] = _9767
                                    mem[_9442 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9442 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9442 + 221] = address(_9191)
                                        mem[_9442 + 241] = address(_9196)
                                        mem[_9442 + 189] = 40
                                        mem[_9442 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9442 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9442 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9442 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9442 + 261] = 85
                                        mem[_9442 + 378] = 0
                                        mem[64] = _9442 + 410
                                        mem[_9442 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9442 + 414] = 0
                                        mem[_9442 + 446] = _9227
                                        mem[_9442 + 478] = address(sha3(0, 17269419903419772280, _9767, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9442 + 510] = 128
                                        mem[_9442 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9442 + 574] = mem[idx + _9442 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9227, address(sha3(0, 17269419903419772280, _9767, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9442 + 221] = address(_9196)
                                        mem[_9442 + 241] = address(_9191)
                                        mem[_9442 + 189] = 40
                                        mem[_9442 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9442 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9442 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9442 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9442 + 261] = 85
                                        mem[_9442 + 378] = 0
                                        mem[64] = _9442 + 410
                                        mem[_9442 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9442 + 414] = 0
                                        mem[_9442 + 446] = _9227
                                        mem[_9442 + 478] = address(sha3(0, 17269419903419772280, _9767, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9442 + 510] = 128
                                        mem[_9442 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9442 + 574] = mem[idx + _9442 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9227, address(sha3(0, 17269419903419772280, _9767, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5727] - 2:
                                if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5727 + 44 len 20] < mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    if not mem[(32 * s) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9447 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9785 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9787 = sha3(mem[_9785 + 32 len mem[_9785]])
                                    mem[_9447 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9447 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9447 + 125] = _9787
                                    mem[_9447 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9447 + 72] = 85
                                    mem[_9447 + 189] = 0
                                    mem[64] = _9447 + 221
                                    mem[_9447 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9447 + 225] = _9227
                                    mem[_9447 + 257] = 0
                                    mem[_9447 + 289] = this.address
                                    mem[_9447 + 321] = 128
                                    mem[_9447 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9447 + 385] = mem[idx + _9447 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9787, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9227, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9448 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9191)
                                    _9789 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9791 = sha3(mem[_9789 + 32 len mem[_9789]])
                                    mem[_9448 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9448 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9448 + 125] = _9791
                                    mem[_9448 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9448 + 72] = 85
                                    mem[_9448 + 189] = 0
                                    mem[64] = _9448 + 221
                                    mem[_9448 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9448 + 225] = _9227
                                    mem[_9448 + 257] = 0
                                    mem[_9448 + 289] = this.address
                                    mem[_9448 + 321] = 128
                                    mem[_9448 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9448 + 385] = mem[idx + _9448 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9791, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9227, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5727]
                                _9288 = mem[(32 * s + 2) + _5727 + 32]
                                if mem[(32 * s + 1) + _5727 + 44 len 20] == mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5727 + 44 len 20] < mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9445 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9288)
                                    _9777 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9779 = sha3(mem[_9777 + 32 len mem[_9777]])
                                    mem[_9445 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9445 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9445 + 125] = _9779
                                    mem[_9445 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9445 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9445 + 221] = address(_9191)
                                        mem[_9445 + 241] = address(_9196)
                                        mem[_9445 + 189] = 40
                                        mem[_9445 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9445 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9445 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9445 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9445 + 261] = 85
                                        mem[_9445 + 378] = 0
                                        mem[64] = _9445 + 410
                                        mem[_9445 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9445 + 414] = _9227
                                        mem[_9445 + 446] = 0
                                        mem[_9445 + 478] = address(sha3(0, 17269419903419772280, _9779, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9445 + 510] = 128
                                        mem[_9445 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9445 + 574] = mem[idx + _9445 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9227, 0, address(sha3(0, 17269419903419772280, _9779, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9445 + 221] = address(_9196)
                                        mem[_9445 + 241] = address(_9191)
                                        mem[_9445 + 189] = 40
                                        mem[_9445 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9445 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9445 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9445 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9445 + 261] = 85
                                        mem[_9445 + 378] = 0
                                        mem[64] = _9445 + 410
                                        mem[_9445 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9445 + 414] = _9227
                                        mem[_9445 + 446] = 0
                                        mem[_9445 + 478] = address(sha3(0, 17269419903419772280, _9779, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9445 + 510] = 128
                                        mem[_9445 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9445 + 574] = mem[idx + _9445 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9227, 0, address(sha3(0, 17269419903419772280, _9779, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9446 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9781 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9783 = sha3(mem[_9781 + 32 len mem[_9781]])
                                    mem[_9446 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9446 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9446 + 125] = _9783
                                    mem[_9446 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9446 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9446 + 221] = address(_9191)
                                        mem[_9446 + 241] = address(_9196)
                                        mem[_9446 + 189] = 40
                                        mem[_9446 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9446 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9446 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9446 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9446 + 261] = 85
                                        mem[_9446 + 378] = 0
                                        mem[64] = _9446 + 410
                                        mem[_9446 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9446 + 414] = _9227
                                        mem[_9446 + 446] = 0
                                        mem[_9446 + 478] = address(sha3(0, 17269419903419772280, _9783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9446 + 510] = 128
                                        mem[_9446 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9446 + 574] = mem[idx + _9446 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9227, 0, address(sha3(0, 17269419903419772280, _9783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9446 + 221] = address(_9196)
                                        mem[_9446 + 241] = address(_9191)
                                        mem[_9446 + 189] = 40
                                        mem[_9446 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9446 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9446 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9446 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9446 + 261] = 85
                                        mem[_9446 + 378] = 0
                                        mem[64] = _9446 + 410
                                        mem[_9446 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9446 + 414] = _9227
                                        mem[_9446 + 446] = 0
                                        mem[_9446 + 478] = address(sha3(0, 17269419903419772280, _9783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9446 + 510] = 128
                                        mem[_9446 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9446 + 574] = mem[idx + _9446 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9227, 0, address(sha3(0, 17269419903419772280, _9783, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    else:
                        if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                        require s + 1 < mem[_2191 + ceil32(return_data.size) + 189]
                        _9228 = mem[(32 * s + 1) + _2191 + ceil32(return_data.size) + 221]
                        if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                            if s >= mem[_5727] - 2:
                                if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5727 + 44 len 20] < mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    if not mem[(32 * s) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9451 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9801 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9803 = sha3(mem[_9801 + 32 len mem[_9801]])
                                    mem[_9451 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9451 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9451 + 125] = _9803
                                    mem[_9451 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9451 + 72] = 85
                                    mem[_9451 + 189] = 0
                                    mem[64] = _9451 + 221
                                    mem[_9451 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9451 + 225] = 0
                                    mem[_9451 + 257] = _9228
                                    mem[_9451 + 289] = this.address
                                    mem[_9451 + 321] = 128
                                    mem[_9451 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9451 + 385] = mem[idx + _9451 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9803, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9803, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9228, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9452 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9191)
                                    _9805 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9807 = sha3(mem[_9805 + 32 len mem[_9805]])
                                    mem[_9452 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9452 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9452 + 125] = _9807
                                    mem[_9452 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9452 + 72] = 85
                                    mem[_9452 + 189] = 0
                                    mem[64] = _9452 + 221
                                    mem[_9452 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9452 + 225] = 0
                                    mem[_9452 + 257] = _9228
                                    mem[_9452 + 289] = this.address
                                    mem[_9452 + 321] = 128
                                    mem[_9452 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9452 + 385] = mem[idx + _9452 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9807, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _9228, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5727]
                                _9290 = mem[(32 * s + 2) + _5727 + 32]
                                if mem[(32 * s + 1) + _5727 + 44 len 20] == mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5727 + 44 len 20] < mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9449 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9290)
                                    _9793 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9795 = sha3(mem[_9793 + 32 len mem[_9793]])
                                    mem[_9449 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9449 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9449 + 125] = _9795
                                    mem[_9449 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9449 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9449 + 221] = address(_9191)
                                        mem[_9449 + 241] = address(_9196)
                                        mem[_9449 + 189] = 40
                                        mem[_9449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9449 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9449 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9449 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9449 + 261] = 85
                                        mem[_9449 + 378] = 0
                                        mem[64] = _9449 + 410
                                        mem[_9449 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9449 + 414] = 0
                                        mem[_9449 + 446] = _9228
                                        mem[_9449 + 478] = address(sha3(0, 17269419903419772280, _9795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9449 + 510] = 128
                                        mem[_9449 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9449 + 574] = mem[idx + _9449 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9228, address(sha3(0, 17269419903419772280, _9795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9449 + 221] = address(_9196)
                                        mem[_9449 + 241] = address(_9191)
                                        mem[_9449 + 189] = 40
                                        mem[_9449 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9449 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9449 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9449 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9449 + 261] = 85
                                        mem[_9449 + 378] = 0
                                        mem[64] = _9449 + 410
                                        mem[_9449 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9449 + 414] = 0
                                        mem[_9449 + 446] = _9228
                                        mem[_9449 + 478] = address(sha3(0, 17269419903419772280, _9795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9449 + 510] = 128
                                        mem[_9449 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9449 + 574] = mem[idx + _9449 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9228, address(sha3(0, 17269419903419772280, _9795, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9450 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9797 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9799 = sha3(mem[_9797 + 32 len mem[_9797]])
                                    mem[_9450 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9450 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9450 + 125] = _9799
                                    mem[_9450 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9450 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9450 + 221] = address(_9191)
                                        mem[_9450 + 241] = address(_9196)
                                        mem[_9450 + 189] = 40
                                        mem[_9450 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9450 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9450 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9450 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9450 + 261] = 85
                                        mem[_9450 + 378] = 0
                                        mem[64] = _9450 + 410
                                        mem[_9450 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9450 + 414] = 0
                                        mem[_9450 + 446] = _9228
                                        mem[_9450 + 478] = address(sha3(0, 17269419903419772280, _9799, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9450 + 510] = 128
                                        mem[_9450 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9450 + 574] = mem[idx + _9450 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9228, address(sha3(0, 17269419903419772280, _9799, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9450 + 221] = address(_9196)
                                        mem[_9450 + 241] = address(_9191)
                                        mem[_9450 + 189] = 40
                                        mem[_9450 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9450 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9450 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9450 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9450 + 261] = 85
                                        mem[_9450 + 378] = 0
                                        mem[64] = _9450 + 410
                                        mem[_9450 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9450 + 414] = 0
                                        mem[_9450 + 446] = _9228
                                        mem[_9450 + 478] = address(sha3(0, 17269419903419772280, _9799, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9450 + 510] = 128
                                        mem[_9450 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9450 + 574] = mem[idx + _9450 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, _9228, address(sha3(0, 17269419903419772280, _9799, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                        else:
                            if s >= mem[_5727] - 2:
                                if mem[(32 * s) + _5727 + 44 len 20] == mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s) + _5727 + 44 len 20] < mem[(32 * s + 1) + _5727 + 44 len 20]:
                                    if not mem[(32 * s) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9455 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9817 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9819 = sha3(mem[_9817 + 32 len mem[_9817]])
                                    mem[_9455 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9455 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9455 + 125] = _9819
                                    mem[_9455 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9455 + 72] = 85
                                    mem[_9455 + 189] = 0
                                    mem[64] = _9455 + 221
                                    mem[_9455 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9455 + 225] = _9228
                                    mem[_9455 + 257] = 0
                                    mem[_9455 + 289] = this.address
                                    mem[_9455 + 321] = 128
                                    mem[_9455 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9455 + 385] = mem[idx + _9455 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9819, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9228, 0, address(this.address), 128, 0
                                else:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9456 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9191)
                                    _9821 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9823 = sha3(mem[_9821 + 32 len mem[_9821]])
                                    mem[_9456 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9456 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9456 + 125] = _9823
                                    mem[_9456 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9456 + 72] = 85
                                    mem[_9456 + 189] = 0
                                    mem[64] = _9456 + 221
                                    mem[_9456 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_9456 + 225] = _9228
                                    mem[_9456 + 257] = 0
                                    mem[_9456 + 289] = this.address
                                    mem[_9456 + 321] = 128
                                    mem[_9456 + 353] = 0
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _9456 + 385] = mem[idx + _9456 + 221]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, 17269419903419772280, _9823, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                    call address(sha3(0, 17269419903419772280, _9823, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _9228, 0, address(this.address), 128, 0
                            else:
                                require s + 2 < mem[_5727]
                                _9291 = mem[(32 * s + 2) + _5727 + 32]
                                if mem[(32 * s + 1) + _5727 + 44 len 20] == mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                if mem[(32 * s + 1) + _5727 + 44 len 20] < mem[(32 * s + 2) + _5727 + 44 len 20]:
                                    if not mem[(32 * s + 1) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9453 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 1) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9291)
                                    _9809 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9811 = sha3(mem[_9809 + 32 len mem[_9809]])
                                    mem[_9453 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9453 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9453 + 125] = _9811
                                    mem[_9453 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9453 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9453 + 221] = address(_9191)
                                        mem[_9453 + 241] = address(_9196)
                                        mem[_9453 + 189] = 40
                                        mem[_9453 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9453 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9453 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9453 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9453 + 261] = 85
                                        mem[_9453 + 378] = 0
                                        mem[64] = _9453 + 410
                                        mem[_9453 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9453 + 414] = _9228
                                        mem[_9453 + 446] = 0
                                        mem[_9453 + 478] = address(sha3(0, 17269419903419772280, _9811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9453 + 510] = 128
                                        mem[_9453 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9453 + 574] = mem[idx + _9453 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9228, 0, address(sha3(0, 17269419903419772280, _9811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9453 + 221] = address(_9196)
                                        mem[_9453 + 241] = address(_9191)
                                        mem[_9453 + 189] = 40
                                        mem[_9453 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9453 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9453 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9453 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9453 + 261] = 85
                                        mem[_9453 + 378] = 0
                                        mem[64] = _9453 + 410
                                        mem[_9453 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9453 + 414] = _9228
                                        mem[_9453 + 446] = 0
                                        mem[_9453 + 478] = address(sha3(0, 17269419903419772280, _9811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9453 + 510] = 128
                                        mem[_9453 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9453 + 574] = mem[idx + _9453 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9228, 0, address(sha3(0, 17269419903419772280, _9811, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                else:
                                    if not mem[(32 * s + 2) + _5727 + 44 len 20]:
                                        revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                    _9454 = mem[64]
                                    mem[mem[64] + 32] = address(mem[(32 * s + 2) + _5727 + 32])
                                    mem[mem[64] + 52] = address(_9196)
                                    _9813 = mem[64]
                                    mem[mem[64]] = 40
                                    mem[64] = mem[64] + 72
                                    _9815 = sha3(mem[_9813 + 32 len mem[_9813]])
                                    mem[_9454 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                    mem[_9454 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                    mem[_9454 + 125] = _9815
                                    mem[_9454 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                    mem[_9454 + 72] = 85
                                    if address(_9191) == address(_9196):
                                        revert with 0, 'ARBLibrary: IDENTICAL_ADDRESSES'
                                    if address(_9191) < address(_9196):
                                        if not address(_9191):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9454 + 221] = address(_9191)
                                        mem[_9454 + 241] = address(_9196)
                                        mem[_9454 + 189] = 40
                                        mem[_9454 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9454 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9454 + 314] = sha3(address(_9191), address(_9196))
                                        mem[_9454 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9454 + 261] = 85
                                        mem[_9454 + 378] = 0
                                        mem[64] = _9454 + 410
                                        mem[_9454 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9454 + 414] = _9228
                                        mem[_9454 + 446] = 0
                                        mem[_9454 + 478] = address(sha3(0, 17269419903419772280, _9815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9454 + 510] = 128
                                        mem[_9454 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9454 + 574] = mem[idx + _9454 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9191), address(_9196)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9228, 0, address(sha3(0, 17269419903419772280, _9815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                                    else:
                                        if not address(_9196):
                                            revert with 0, 'ARBLibrary: ZERO_ADDRESS'
                                        mem[_9454 + 221] = address(_9196)
                                        mem[_9454 + 241] = address(_9191)
                                        mem[_9454 + 189] = 40
                                        mem[_9454 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_9454 + 294] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
                                        mem[_9454 + 314] = sha3(address(_9196), address(_9191))
                                        mem[_9454 + 346] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
                                        mem[_9454 + 261] = 85
                                        mem[_9454 + 378] = 0
                                        mem[64] = _9454 + 410
                                        mem[_9454 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_9454 + 414] = _9228
                                        mem[_9454 + 446] = 0
                                        mem[_9454 + 478] = address(sha3(0, 17269419903419772280, _9815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545))
                                        mem[_9454 + 510] = 128
                                        mem[_9454 + 542] = 0
                                        idx = 0
                                        while idx < 0:
                                            mem[idx + _9454 + 574] = mem[idx + _9454 + 410]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
                                        call address(sha3(0, 17269419903419772280, sha3(address(_9196), address(_9191)), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args _9228, 0, address(sha3(0, 17269419903419772280, _9815, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9248] == mem[_9248]
                if _2178 + 10^17 < _2178:
                    revert with 0, 'SafeMath: addition overflow'
                if mem[_9248] <= _2178 + 10^17:
                    revert with 0, 'not good'
        idx = idx + 1
        continue 
}



}
