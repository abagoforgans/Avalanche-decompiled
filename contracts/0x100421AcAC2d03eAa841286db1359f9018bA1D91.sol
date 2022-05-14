contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    revert
}

function sub_2b308e29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'GIGA'
    stor4 = arg1
}

function sub_2365cd22(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if block.number < stor3:
        revert with 'NH{q', 17
    if block.number - stor3 <= 1:
        revert with 0, 'GIGACHAD'
    mem[132] = 0xcde44a5520bbff9f8be14d6e991ec82a275e683c
    mem[96] = 36
    mem[64] = 164
    mem[132 len 28] = 0xcde44a5520bbff9f8be14d6e991ec82a
    mem[128 len 4] = skim(address arg1)
    stor3 = block.number
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _13 = mem[64]
        _14 = mem[96]
        s = 0
        while s < _14:
            mem[_13 + s] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_14) <= _14:
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _13 + _14 + -mem[64] - 4]
            if return_data.size:
                _22 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_22] = return_data.size
                mem[_22 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_13 + _14] = 0
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _13 + _14 + -mem[64] - 4]
            if return_data.size:
                _24 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_24] = return_data.size
                mem[_24 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_3ee374e0(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(stor1)
                staticcall stor1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_224] == mem[_224 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_224 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _248 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _264 = mem[_260]
                require mem[_260] == mem[_260 + 18 len 14]
                _268 = mem[_260 + 32]
                require mem[_260 + 32] == mem[_260 + 50 len 14]
                require mem[_260 + 64] == mem[_260 + 92 len 4]
                require ext_code.size(address(_248))
                staticcall address(_248).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _288 = mem[_284]
                require mem[_284] == mem[_284 + 12 len 20]
                mem[mem[64] + 4] = address(_248)
                require ext_code.size(address(_288))
                staticcall address(_288).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_248)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _300 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_300] == mem[_300]
                if mem[_300] < Mask(112, 0, _264):
                    revert with 'NH{q', 17
                if mem[_300] - Mask(112, 0, _264) <= stor4:
                    require ext_code.size(address(_248))
                    staticcall address(_248).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _328 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _340 = mem[_328]
                    require mem[_328] == mem[_328 + 12 len 20]
                    mem[mem[64] + 4] = address(_248)
                    require ext_code.size(address(_340))
                    staticcall address(_340).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_248)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_364] == mem[_364]
                    if mem[_364] < Mask(112, 0, _268):
                        revert with 'NH{q', 17
                    if mem[_364] - Mask(112, 0, _268) > stor4:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                else:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                    require ext_code.size(address(_248))
                    staticcall address(_248).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _348 = mem[_341]
                    require mem[_341] == mem[_341 + 12 len 20]
                    mem[mem[64] + 4] = address(_248)
                    require ext_code.size(address(_348))
                    staticcall address(_348).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_248)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_373] == mem[_373]
                    if mem[_373] < Mask(112, 0, _268):
                        revert with 'NH{q', 17
                    if mem[_373] - Mask(112, 0, _268) > stor4:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 32
            _216 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = mem[64] + 64
            while idx < _216:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _212 + (32 * _216) + -mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor1)
            staticcall stor1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == mem[_225 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_225 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _251 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _265 = mem[_261]
            require mem[_261] == mem[_261 + 18 len 14]
            _269 = mem[_261 + 32]
            require mem[_261 + 32] == mem[_261 + 50 len 14]
            require mem[_261 + 64] == mem[_261 + 92 len 4]
            require ext_code.size(address(_251))
            staticcall address(_251).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _289 = mem[_285]
            require mem[_285] == mem[_285 + 12 len 20]
            mem[mem[64] + 4] = address(_251)
            require ext_code.size(address(_289))
            staticcall address(_289).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_251)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_301] == mem[_301]
            if mem[_301] < Mask(112, 0, _265):
                revert with 'NH{q', 17
            if mem[_301] - Mask(112, 0, _265) <= stor4:
                require ext_code.size(address(_251))
                staticcall address(_251).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _342 = mem[_329]
                require mem[_329] == mem[_329 + 12 len 20]
                mem[mem[64] + 4] = address(_251)
                require ext_code.size(address(_342))
                staticcall address(_342).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_251)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_365] == mem[_365]
                if mem[_365] < Mask(112, 0, _269):
                    revert with 'NH{q', 17
                if mem[_365] - Mask(112, 0, _269) > stor4:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            else:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(address(_251))
                staticcall address(_251).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _343 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _349 = mem[_343]
                require mem[_343] == mem[_343 + 12 len 20]
                mem[mem[64] + 4] = address(_251)
                require ext_code.size(address(_349))
                staticcall address(_349).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_251)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_375] == mem[_375]
                if mem[_375] < Mask(112, 0, _269):
                    revert with 'NH{q', 17
                if mem[_375] - Mask(112, 0, _269) > stor4:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _213 = mem[64]
        mem[mem[64]] = 32
        _217 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + 64
        while idx < _217:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _213 + (32 * _217) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor1)
            staticcall stor1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == mem[_226 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_226 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _254 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _266 = mem[_262]
            require mem[_262] == mem[_262 + 18 len 14]
            _270 = mem[_262 + 32]
            require mem[_262 + 32] == mem[_262 + 50 len 14]
            require mem[_262 + 64] == mem[_262 + 92 len 4]
            require ext_code.size(address(_254))
            staticcall address(_254).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _290 = mem[_286]
            require mem[_286] == mem[_286 + 12 len 20]
            mem[mem[64] + 4] = address(_254)
            require ext_code.size(address(_290))
            staticcall address(_290).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_254)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_302] == mem[_302]
            if mem[_302] < Mask(112, 0, _266):
                revert with 'NH{q', 17
            if mem[_302] - Mask(112, 0, _266) <= stor4:
                require ext_code.size(address(_254))
                staticcall address(_254).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _344 = mem[_330]
                require mem[_330] == mem[_330 + 12 len 20]
                mem[mem[64] + 4] = address(_254)
                require ext_code.size(address(_344))
                staticcall address(_344).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_254)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_366] == mem[_366]
                if mem[_366] < Mask(112, 0, _270):
                    revert with 'NH{q', 17
                if mem[_366] - Mask(112, 0, _270) > stor4:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            else:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(address(_254))
                staticcall address(_254).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _345 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _350 = mem[_345]
                require mem[_345] == mem[_345 + 12 len 20]
                mem[mem[64] + 4] = address(_254)
                require ext_code.size(address(_350))
                staticcall address(_350).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_254)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_377] == mem[_377]
                if mem[_377] < Mask(112, 0, _270):
                    revert with 'NH{q', 17
                if mem[_377] - Mask(112, 0, _270) > stor4:
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _214 = mem[64]
        mem[mem[64]] = 32
        _218 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = mem[64] + 64
        while idx < _218:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _214 + (32 * _218) + -mem[64] + 64
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor1)
        staticcall stor1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_227] == mem[_227 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_227 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _257 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _267 = mem[_263]
        require mem[_263] == mem[_263 + 18 len 14]
        _271 = mem[_263 + 32]
        require mem[_263 + 32] == mem[_263 + 50 len 14]
        require mem[_263 + 64] == mem[_263 + 92 len 4]
        require ext_code.size(address(_257))
        staticcall address(_257).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _291 = mem[_287]
        require mem[_287] == mem[_287 + 12 len 20]
        mem[mem[64] + 4] = address(_257)
        require ext_code.size(address(_291))
        staticcall address(_291).0x70a08231 with:
                gas gas_remaining wei
               args address(_257)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_303] == mem[_303]
        if mem[_303] < Mask(112, 0, _267):
            revert with 'NH{q', 17
        if mem[_303] - Mask(112, 0, _267) <= stor4:
            require ext_code.size(address(_257))
            staticcall address(_257).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _346 = mem[_331]
            require mem[_331] == mem[_331 + 12 len 20]
            mem[mem[64] + 4] = address(_257)
            require ext_code.size(address(_346))
            staticcall address(_346).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_257)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_367] == mem[_367]
            if mem[_367] < Mask(112, 0, _271):
                revert with 'NH{q', 17
            if mem[_367] - Mask(112, 0, _271) > stor4:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        else:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(address(_257))
            staticcall address(_257).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _351 = mem[_347]
            require mem[_347] == mem[_347 + 12 len 20]
            mem[mem[64] + 4] = address(_257)
            require ext_code.size(address(_351))
            staticcall address(_351).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_257)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_379] == mem[_379]
            if mem[_379] < Mask(112, 0, _271):
                revert with 'NH{q', 17
            if mem[_379] - Mask(112, 0, _271) > stor4:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _215 = mem[64]
    mem[mem[64]] = 32
    _219 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
    t = mem[64] + 64
    while idx < _219:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _215 + (32 * _219) + -mem[64] + 64
}



}
