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
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
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
            _240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_240] == mem[_240 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_240 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _204 = mem[ceil32(return_data.size) + 96]
        if mem[ceil32(return_data.size) + 96] > test266151307():
            revert with 'NH{q', 65
        _208 = mem[64]
        mem[mem[64]] = mem[ceil32(return_data.size) + 96]
        mem[64] = mem[64] + (32 * _204) + 32
        if not _204:
            _402 = mem[ceil32(return_data.size) + 96]
            idx = 0
            while uint8(idx) < _402:
                if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                _411 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
                require ext_code.size(mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _434 = mem[_426]
                require mem[_426] == mem[_426 + 18 len 14]
                _443 = mem[_426 + 32]
                require mem[_426 + 32] == mem[_426 + 50 len 14]
                require mem[_426 + 64] == mem[_426 + 92 len 4]
                require ext_code.size(address(_411))
                staticcall address(_411).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _466 = mem[_462]
                require mem[_462] == mem[_462 + 12 len 20]
                mem[mem[64] + 4] = address(_411)
                require ext_code.size(address(_466))
                staticcall address(_466).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_411)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_478] == mem[_478]
                if mem[_478] < Mask(112, 0, _434):
                    revert with 'NH{q', 17
                if mem[_478] - Mask(112, 0, _434) <= stor4:
                    require ext_code.size(address(_411))
                    staticcall address(_411).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _518 = mem[_506]
                    require mem[_506] == mem[_506 + 12 len 20]
                    mem[mem[64] + 4] = address(_411)
                    require ext_code.size(address(_518))
                    staticcall address(_518).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_411)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_542] == mem[_542]
                    if mem[_542] < Mask(112, 0, _443):
                        revert with 'NH{q', 17
                    if mem[_542] - Mask(112, 0, _443) > stor4:
                        if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[_208]:
                            revert with 'NH{q', 50
                        mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
                else:
                    if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_208]:
                        revert with 'NH{q', 50
                    mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
                    require ext_code.size(address(_411))
                    staticcall address(_411).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _526 = mem[_519]
                    require mem[_519] == mem[_519 + 12 len 20]
                    mem[mem[64] + 4] = address(_411)
                    require ext_code.size(address(_526))
                    staticcall address(_526).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_411)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_551] == mem[_551]
                    if mem[_551] < Mask(112, 0, _443):
                        revert with 'NH{q', 17
                    if mem[_551] - Mask(112, 0, _443) > stor4:
                        if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[_208]:
                            revert with 'NH{q', 50
                        mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                _402 = mem[ceil32(return_data.size) + 96]
                idx = uint8(idx) + 1
                continue 
            _410 = mem[64]
            mem[mem[64]] = 32
            _430 = mem[_208]
            mem[mem[64] + 32] = mem[_208]
            idx = 0
            s = _208 + 32
            t = mem[64] + 64
            while idx < _430:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _410 + (32 * _430) + -mem[64] + 64
        mem[_208 + 32 len 32 * _204] = call.data[calldata.size len 32 * _204]
        _403 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while uint8(idx) < _403:
            if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _415 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _427 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _435 = mem[_427]
            require mem[_427] == mem[_427 + 18 len 14]
            _445 = mem[_427 + 32]
            require mem[_427 + 32] == mem[_427 + 50 len 14]
            require mem[_427 + 64] == mem[_427 + 92 len 4]
            require ext_code.size(address(_415))
            staticcall address(_415).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _467 = mem[_463]
            require mem[_463] == mem[_463 + 12 len 20]
            mem[mem[64] + 4] = address(_415)
            require ext_code.size(address(_467))
            staticcall address(_467).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_415)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_479] == mem[_479]
            if mem[_479] < Mask(112, 0, _435):
                revert with 'NH{q', 17
            if mem[_479] - Mask(112, 0, _435) <= stor4:
                require ext_code.size(address(_415))
                staticcall address(_415).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _507 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _520 = mem[_507]
                require mem[_507] == mem[_507 + 12 len 20]
                mem[mem[64] + 4] = address(_415)
                require ext_code.size(address(_520))
                staticcall address(_520).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_415)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_543] == mem[_543]
                if mem[_543] < Mask(112, 0, _445):
                    revert with 'NH{q', 17
                if mem[_543] - Mask(112, 0, _445) > stor4:
                    if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_208]:
                        revert with 'NH{q', 50
                    mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
            else:
                if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_208]:
                    revert with 'NH{q', 50
                mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(address(_415))
                staticcall address(_415).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _527 = mem[_521]
                require mem[_521] == mem[_521 + 12 len 20]
                mem[mem[64] + 4] = address(_415)
                require ext_code.size(address(_527))
                staticcall address(_527).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_415)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_553] == mem[_553]
                if mem[_553] < Mask(112, 0, _445):
                    revert with 'NH{q', 17
                if mem[_553] - Mask(112, 0, _445) > stor4:
                    if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_208]:
                        revert with 'NH{q', 50
                    mem[(32 * uint8(idx)) + _208 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            _403 = mem[ceil32(return_data.size) + 96]
            idx = uint8(idx) + 1
            continue 
        _414 = mem[64]
        mem[mem[64]] = 32
        _431 = mem[_208]
        mem[mem[64] + 32] = mem[_208]
        idx = 0
        s = _208 + 32
        t = mem[64] + 64
        while idx < _431:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _414 + (32 * _431) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
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
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == mem[_243 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_243 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _206 = mem[ceil32(return_data.size) + 96]
    if mem[ceil32(return_data.size) + 96] > test266151307():
        revert with 'NH{q', 65
    _209 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 96]
    mem[64] = mem[64] + (32 * _206) + 32
    if not _206:
        _404 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while uint8(idx) < _404:
            if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _419 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
            require ext_code.size(mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _436 = mem[_428]
            require mem[_428] == mem[_428 + 18 len 14]
            _447 = mem[_428 + 32]
            require mem[_428 + 32] == mem[_428 + 50 len 14]
            require mem[_428 + 64] == mem[_428 + 92 len 4]
            require ext_code.size(address(_419))
            staticcall address(_419).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _468 = mem[_464]
            require mem[_464] == mem[_464 + 12 len 20]
            mem[mem[64] + 4] = address(_419)
            require ext_code.size(address(_468))
            staticcall address(_468).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_419)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _480 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_480] == mem[_480]
            if mem[_480] < Mask(112, 0, _436):
                revert with 'NH{q', 17
            if mem[_480] - Mask(112, 0, _436) <= stor4:
                require ext_code.size(address(_419))
                staticcall address(_419).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _522 = mem[_508]
                require mem[_508] == mem[_508 + 12 len 20]
                mem[mem[64] + 4] = address(_419)
                require ext_code.size(address(_522))
                staticcall address(_522).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_419)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_544] == mem[_544]
                if mem[_544] < Mask(112, 0, _447):
                    revert with 'NH{q', 17
                if mem[_544] - Mask(112, 0, _447) > stor4:
                    if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_209]:
                        revert with 'NH{q', 50
                    mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
            else:
                if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_209]:
                    revert with 'NH{q', 50
                mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
                require ext_code.size(address(_419))
                staticcall address(_419).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _528 = mem[_523]
                require mem[_523] == mem[_523 + 12 len 20]
                mem[mem[64] + 4] = address(_419)
                require ext_code.size(address(_528))
                staticcall address(_528).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_419)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_555] == mem[_555]
                if mem[_555] < Mask(112, 0, _447):
                    revert with 'NH{q', 17
                if mem[_555] - Mask(112, 0, _447) > stor4:
                    if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                        revert with 'NH{q', 50
                    if uint8(idx) >= mem[_209]:
                        revert with 'NH{q', 50
                    mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            _404 = mem[ceil32(return_data.size) + 96]
            idx = uint8(idx) + 1
            continue 
        _418 = mem[64]
        mem[mem[64]] = 32
        _432 = mem[_209]
        mem[mem[64] + 32] = mem[_209]
        idx = 0
        s = _209 + 32
        t = mem[64] + 64
        while idx < _432:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _418 + (32 * _432) + -mem[64] + 64
    mem[_209 + 32 len 32 * _206] = call.data[calldata.size len 32 * _206]
    _405 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while uint8(idx) < _405:
        if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _423 = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _429 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _437 = mem[_429]
        require mem[_429] == mem[_429 + 18 len 14]
        _449 = mem[_429 + 32]
        require mem[_429 + 32] == mem[_429 + 50 len 14]
        require mem[_429 + 64] == mem[_429 + 92 len 4]
        require ext_code.size(address(_423))
        staticcall address(_423).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _465 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _469 = mem[_465]
        require mem[_465] == mem[_465 + 12 len 20]
        mem[mem[64] + 4] = address(_423)
        require ext_code.size(address(_469))
        staticcall address(_469).0x70a08231 with:
                gas gas_remaining wei
               args address(_423)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _481 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_481] == mem[_481]
        if mem[_481] < Mask(112, 0, _437):
            revert with 'NH{q', 17
        if mem[_481] - Mask(112, 0, _437) <= stor4:
            require ext_code.size(address(_423))
            staticcall address(_423).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _509 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _524 = mem[_509]
            require mem[_509] == mem[_509 + 12 len 20]
            mem[mem[64] + 4] = address(_423)
            require ext_code.size(address(_524))
            staticcall address(_524).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_423)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _545 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_545] == mem[_545]
            if mem[_545] < Mask(112, 0, _449):
                revert with 'NH{q', 17
            if mem[_545] - Mask(112, 0, _449) > stor4:
                if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_209]:
                    revert with 'NH{q', 50
                mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
        else:
            if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            if uint8(idx) >= mem[_209]:
                revert with 'NH{q', 50
            mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(address(_423))
            staticcall address(_423).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _529 = mem[_525]
            require mem[_525] == mem[_525 + 12 len 20]
            mem[mem[64] + 4] = address(_423)
            require ext_code.size(address(_529))
            staticcall address(_529).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_423)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_557] == mem[_557]
            if mem[_557] < Mask(112, 0, _449):
                revert with 'NH{q', 17
            if mem[_557] - Mask(112, 0, _449) > stor4:
                if uint8(idx) >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                if uint8(idx) >= mem[_209]:
                    revert with 'NH{q', 50
                mem[(32 * uint8(idx)) + _209 + 32] = mem[(32 * uint8(idx)) + ceil32(return_data.size) + 140 len 20]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        _405 = mem[ceil32(return_data.size) + 96]
        idx = uint8(idx) + 1
        continue 
    _422 = mem[64]
    mem[mem[64]] = 32
    _433 = mem[_209]
    mem[mem[64] + 32] = mem[_209]
    idx = 0
    s = _209 + 32
    t = mem[64] + 64
    while idx < _433:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _422 + (32 * _433) + -mem[64] + 64
}



}
