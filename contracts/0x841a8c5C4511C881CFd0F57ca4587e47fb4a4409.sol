contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
uint8 stor3;
uint256 stor3;

function _active() payable {
    return bool(uint8(stor3))
}

function _fallback() payable {
    revert
}

function toggleActive() payable {
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    uint256(stor3) = not uint8(stor3) or Mask(248, 8, uint256(stor3))
}

function setExecutor(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function withdrawEth() payable {
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b8426a55(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 1248
    require 900 <= calldata.size
    require calldata.size >= 1028
    require calldata.size >= 1220
    require cd[1220] == uint64(cd[1220])
    if not stor2[msg.sender]:
        revert with 0, 'not executors'
    if not uint8(stor3):
        revert with 0, 'Contract is inactive'
    if block.number >= uint64(cd[1220]):
        revert with 0, 'maxBlockNumber'
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'not executors'
    idx = 0
    s = cd[1028]
    while idx < 4:
        require cd[((32 * idx) + 1092)] == uint8(cd[((32 * idx) + 1092)])
        if uint8(cd[((32 * idx) + 1092)]) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 4:
            revert with 0, 50
        _54 = mem[64]
        mem[64] = mem[64] + 224
        mem[_54 len 224] = call.data[(224 * idx) + 4 len 224]
        mem[_54 + 224] = 0
        if address(call.data[(224 * idx) + 196]) > test266151307():
            revert with 0, 65
        _57 = mem[64]
        mem[mem[64]] = address(call.data[(224 * idx) + 196])
        mem[64] = mem[64] + (32 * address(call.data[(224 * idx) + 196])) + 32
        if not address(call.data[(224 * idx) + 196]):
            t = 0
            while t < address(call.data[(224 * idx) + 196]):
                if t >= 7:
                    revert with 0, 50
                if t >= mem[_57]:
                    revert with 0, 50
                mem[(32 * t) + _57 + 32] = address(0x49a55f1e8ec5025deb60a38724004e21e8dc4ebe xor mem[(32 * t) + _54 + 12 len 20])
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            _238 = mem[_54 + 160]
            _239 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _242 = mem[_57]
            mem[mem[64] + 68] = mem[_57]
            s = 0
            t = _57 + 32
            u = mem[64] + 100
            while s < _242:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_238))
            staticcall address(_238).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _239 + (32 * _242) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _431 = mem[_423]
            require mem[_423] <= test266151307()
            require _423 + mem[_423] + 31 < _423 + return_data.size
            _435 = mem[_423 + mem[_423]]
            if mem[_423 + mem[_423]] > test266151307():
                revert with 0, 65
            if _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1 > test266151307() or ceil32(32 * mem[_423 + mem[_423]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1
            mem[_423 + ceil32(return_data.size)] = _435
            require return_data.size >= _431 + (32 * _435) + 32
            t = _423 + _431 + 32
            u = _423 + ceil32(return_data.size) + 32
            s = 0
            while s < _435:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _435 < 1:
                revert with 0, 17
            if _435 - 1 >= _435:
                revert with 0, 50
            if mem[(32 * _435 - 1) + _423 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
                revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
            if _435 < 1:
                revert with 0, 17
            if _435 - 1 >= _435:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[(32 * _435 - 1) + _423 + ceil32(return_data.size) + 32]
            continue 
        mem[_57 + 32 len 32 * address(call.data[(224 * idx) + 196])] = call.data[calldata.size len 32 * address(call.data[(224 * idx) + 196])]
        t = 0
        while t < address(call.data[(224 * idx) + 196]):
            if t >= 7:
                revert with 0, 50
            if t >= mem[_57]:
                revert with 0, 50
            mem[(32 * t) + _57 + 32] = address(0x49a55f1e8ec5025deb60a38724004e21e8dc4ebe xor mem[(32 * t) + _54 + 12 len 20])
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        _240 = mem[_54 + 160]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _243 = mem[_57]
        mem[mem[64] + 68] = mem[_57]
        t = 0
        u = _57 + 32
        v = mem[64] + 100
        while t < _243:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_240))
        staticcall address(_240).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[mem[64] + 68 len (32 * _243) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _424 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _432 = mem[_424]
        require mem[_424] <= test266151307()
        require _424 + mem[_424] + 31 < _424 + return_data.size
        _436 = mem[_424 + mem[_424]]
        if mem[_424 + mem[_424]] > test266151307():
            revert with 0, 65
        if _424 + ceil32(return_data.size) + ceil32(32 * mem[_424 + mem[_424]]) + 1 > test266151307() or ceil32(32 * mem[_424 + mem[_424]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _424 + ceil32(return_data.size) + ceil32(32 * mem[_424 + mem[_424]]) + 1
        mem[_424 + ceil32(return_data.size)] = _436
        require return_data.size >= _432 + (32 * _436) + 32
        t = _424 + _432 + 32
        u = _424 + ceil32(return_data.size) + 32
        s = 0
        while s < _436:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _436 < 1:
            revert with 0, 17
        if _436 - 1 >= _436:
            revert with 0, 50
        if mem[(32 * _436 - 1) + _424 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
            revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
        if _436 < 1:
            revert with 0, 17
        if _436 - 1 >= _436:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[(32 * _436 - 1) + _424 + ceil32(return_data.size) + 32]
        continue 
    idx = 0
    s = cd[1028]
    while idx < 4:
        require cd[((32 * idx) + 1092)] == uint8(cd[((32 * idx) + 1092)])
        if uint8(cd[((32 * idx) + 1092)]) != 1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 4:
            revert with 0, 50
        _244 = mem[64]
        mem[64] = mem[64] + 224
        mem[_244 len 224] = call.data[(224 * idx) + 4 len 224]
        mem[_244 + 224] = 0
        if address(call.data[(224 * idx) + 196]) > test266151307():
            revert with 0, 65
        _254 = mem[64]
        mem[mem[64]] = address(call.data[(224 * idx) + 196])
        mem[64] = mem[64] + (32 * address(call.data[(224 * idx) + 196])) + 32
        if not address(call.data[(224 * idx) + 196]):
            t = 0
            while t < address(call.data[(224 * idx) + 196]):
                if t >= 7:
                    revert with 0, 50
                if t >= mem[_254]:
                    revert with 0, 50
                mem[(32 * t) + _254 + 32] = address(0x49a55f1e8ec5025deb60a38724004e21e8dc4ebe xor mem[(32 * t) + _244 + 12 len 20])
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if 0 >= mem[_254]:
                revert with 0, 50
            _415 = mem[_254 + 32]
            _425 = mem[_244 + 160]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = address(_425)
            require ext_code.size(address(_415))
            staticcall address(_415).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_425)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _433 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_433] >= s:
                _453 = mem[_244 + 160]
                _454 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _461 = mem[_254]
                mem[mem[64] + 68] = mem[_254]
                t = 0
                u = _254 + 32
                v = mem[64] + 100
                while t < _461:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_453))
                staticcall address(_453).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _454 + (32 * _461) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _587 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _595 = mem[_587]
                require mem[_587] <= test266151307()
                require _587 + mem[_587] + 31 < _587 + return_data.size
                _603 = mem[_587 + mem[_587]]
                if mem[_587 + mem[_587]] > test266151307():
                    revert with 0, 65
                if _587 + ceil32(return_data.size) + ceil32(32 * mem[_587 + mem[_587]]) + 1 > test266151307() or ceil32(32 * mem[_587 + mem[_587]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _587 + ceil32(return_data.size) + ceil32(32 * mem[_587 + mem[_587]]) + 1
                mem[_587 + ceil32(return_data.size)] = _603
                require return_data.size >= _595 + (32 * _603) + 32
                u = _587 + _595 + 32
                v = _587 + ceil32(return_data.size) + 32
                t = 0
                while t < _603:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if _603 < 1:
                    revert with 0, 17
                if _603 - 1 >= _603:
                    revert with 0, 50
                if mem[(32 * _603 - 1) + _587 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
                    revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
                _713 = mem[_244 + 160]
                _714 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = cd[((32 * idx) + 900)]
                mem[mem[64] + 68] = 160
                _721 = mem[_254]
                mem[mem[64] + 164] = mem[_254]
                s = 0
                t = _254 + 32
                u = mem[64] + 196
                while s < _721:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_714 + 100] = this.address
                mem[_714 + 132] = 2601891424
                require ext_code.size(address(_713))
                call address(_713).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _714 + (32 * _721) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_254] < 1:
                    revert with 0, 17
                if mem[_254] - 1 >= mem[_254]:
                    revert with 0, 50
                _777 = mem[(32 * mem[_254] - 1) + _254 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_777))
                staticcall address(_777).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_789]
                continue 
            mem[mem[64] + 4] = address(_425)
            mem[mem[64] + 36] = 2777775 * 10^14 * 24 * 3600
            require ext_code.size(address(_415))
            call address(_415).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_425), 2777775 * 10^14 * 24 * 3600
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _447 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_447] == bool(mem[_447])
            _478 = mem[_244 + 160]
            _479 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _484 = mem[_254]
            mem[mem[64] + 68] = mem[_254]
            t = 0
            u = _254 + 32
            v = mem[64] + 100
            while t < _484:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_478))
            staticcall address(_478).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _479 + (32 * _484) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _588 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _596 = mem[_588]
            require mem[_588] <= test266151307()
            require _588 + mem[_588] + 31 < _588 + return_data.size
            _604 = mem[_588 + mem[_588]]
            if mem[_588 + mem[_588]] > test266151307():
                revert with 0, 65
            if _588 + ceil32(return_data.size) + ceil32(32 * mem[_588 + mem[_588]]) + 1 > test266151307() or ceil32(32 * mem[_588 + mem[_588]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _588 + ceil32(return_data.size) + ceil32(32 * mem[_588 + mem[_588]]) + 1
            mem[_588 + ceil32(return_data.size)] = _604
            require return_data.size >= _596 + (32 * _604) + 32
            u = _588 + _596 + 32
            v = _588 + ceil32(return_data.size) + 32
            t = 0
            while t < _604:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if _604 < 1:
                revert with 0, 17
            if _604 - 1 >= _604:
                revert with 0, 50
            if mem[(32 * _604 - 1) + _588 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
                revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
            _715 = mem[_244 + 160]
            _716 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = cd[((32 * idx) + 900)]
            mem[mem[64] + 68] = 160
            _722 = mem[_254]
            mem[mem[64] + 164] = mem[_254]
            s = 0
            t = _254 + 32
            u = mem[64] + 196
            while s < _722:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_716 + 100] = this.address
            mem[_716 + 132] = 2601891424
            require ext_code.size(address(_715))
            call address(_715).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _716 + (32 * _722) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_254] < 1:
                revert with 0, 17
            if mem[_254] - 1 >= mem[_254]:
                revert with 0, 50
            _780 = mem[(32 * mem[_254] - 1) + _254 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_780))
            staticcall address(_780).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_790]
            continue 
        mem[_254 + 32 len 32 * address(call.data[(224 * idx) + 196])] = call.data[calldata.size len 32 * address(call.data[(224 * idx) + 196])]
        t = 0
        while t < address(call.data[(224 * idx) + 196]):
            if t >= 7:
                revert with 0, 50
            if t >= mem[_254]:
                revert with 0, 50
            mem[(32 * t) + _254 + 32] = address(0x49a55f1e8ec5025deb60a38724004e21e8dc4ebe xor mem[(32 * t) + _244 + 12 len 20])
            if t == -1:
                revert with 0, 17
            t = t + 1
            continue 
        if 0 >= mem[_254]:
            revert with 0, 50
        _417 = mem[_254 + 32]
        _426 = mem[_244 + 160]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(_426)
        require ext_code.size(address(_417))
        staticcall address(_417).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(_426)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _434 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_434] >= s:
            _455 = mem[_244 + 160]
            _456 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            _462 = mem[_254]
            mem[mem[64] + 68] = mem[_254]
            t = 0
            u = _254 + 32
            v = mem[64] + 100
            while t < _462:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(address(_455))
            staticcall address(_455).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _456 + (32 * _462) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _597 = mem[_589]
            require mem[_589] <= test266151307()
            require _589 + mem[_589] + 31 < _589 + return_data.size
            _605 = mem[_589 + mem[_589]]
            if mem[_589 + mem[_589]] > test266151307():
                revert with 0, 65
            if _589 + ceil32(return_data.size) + ceil32(32 * mem[_589 + mem[_589]]) + 1 > test266151307() or ceil32(32 * mem[_589 + mem[_589]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _589 + ceil32(return_data.size) + ceil32(32 * mem[_589 + mem[_589]]) + 1
            mem[_589 + ceil32(return_data.size)] = _605
            require return_data.size >= _597 + (32 * _605) + 32
            u = _589 + _597 + 32
            v = _589 + ceil32(return_data.size) + 32
            t = 0
            while t < _605:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if _605 < 1:
                revert with 0, 17
            if _605 - 1 >= _605:
                revert with 0, 50
            if mem[(32 * _605 - 1) + _589 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
                revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
            _717 = mem[_244 + 160]
            _718 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = cd[((32 * idx) + 900)]
            mem[mem[64] + 68] = 160
            _723 = mem[_254]
            mem[mem[64] + 164] = mem[_254]
            s = 0
            t = _254 + 32
            u = mem[64] + 196
            while s < _723:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_718 + 100] = this.address
            mem[_718 + 132] = 2601891424
            require ext_code.size(address(_717))
            call address(_717).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _718 + (32 * _723) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_254] < 1:
                revert with 0, 17
            if mem[_254] - 1 >= mem[_254]:
                revert with 0, 50
            _783 = mem[(32 * mem[_254] - 1) + _254 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_783))
            staticcall address(_783).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_791]
            continue 
        mem[mem[64] + 4] = address(_426)
        mem[mem[64] + 36] = 2777775 * 10^14 * 24 * 3600
        require ext_code.size(address(_417))
        call address(_417).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_426), 2777775 * 10^14 * 24 * 3600
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_448] == bool(mem[_448])
        _481 = mem[_244 + 160]
        _482 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        _486 = mem[_254]
        mem[mem[64] + 68] = mem[_254]
        t = 0
        u = _254 + 32
        v = mem[64] + 100
        while t < _486:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(_481))
        staticcall address(_481).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _482 + (32 * _486) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _590 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _598 = mem[_590]
        require mem[_590] <= test266151307()
        require _590 + mem[_590] + 31 < _590 + return_data.size
        _606 = mem[_590 + mem[_590]]
        if mem[_590 + mem[_590]] > test266151307():
            revert with 0, 65
        if _590 + ceil32(return_data.size) + ceil32(32 * mem[_590 + mem[_590]]) + 1 > test266151307() or ceil32(32 * mem[_590 + mem[_590]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _590 + ceil32(return_data.size) + ceil32(32 * mem[_590 + mem[_590]]) + 1
        mem[_590 + ceil32(return_data.size)] = _606
        require return_data.size >= _598 + (32 * _606) + 32
        u = _590 + _598 + 32
        v = _590 + ceil32(return_data.size) + 32
        t = 0
        while t < _606:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if _606 < 1:
            revert with 0, 17
        if _606 - 1 >= _606:
            revert with 0, 50
        if mem[(32 * _606 - 1) + _590 + ceil32(return_data.size) + 32] < cd[((32 * idx) + 900)]:
            revert with 0, 'HelloRouter: INSUFFICIENT_OUTPUT_AMOUNT'
        _719 = mem[_244 + 160]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = cd[((32 * idx) + 900)]
        mem[mem[64] + 68] = 160
        _724 = mem[_254]
        mem[mem[64] + 164] = mem[_254]
        t = 0
        u = _254 + 32
        v = mem[64] + 196
        while t < _724:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = 2601891424
        require ext_code.size(address(_719))
        call address(_719).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, cd[((32 * idx) + 900)], 160, address(this.address), 2601891424, mem[mem[64] + 164 len (32 * _724) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_254] < 1:
            revert with 0, 17
        if mem[_254] - 1 >= mem[_254]:
            revert with 0, 50
        _786 = mem[(32 * mem[_254] - 1) + _254 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_786))
        staticcall address(_786).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _792 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = mem[_792]
        continue 
}



}
