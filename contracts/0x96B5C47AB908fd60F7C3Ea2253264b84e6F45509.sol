contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
array of address stor1;
array of address stor3;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    require eth.balance(this.address) >= arg1
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require stor0 == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    if not arg2:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_937279a9(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 36).length - 1 < ('cd', 36).length
    require 0 < ('cd', 36).length
    require address(('cd', 36)[0]) == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[64] = 192
    require 0 < ('cd', 36).length
    mem[128] = address(('cd', 36)[0])
    require 1 < ('cd', 36).length
    mem[160] = address(('cd', 36)[1])
    mem[96] = 128
    stor2.length = 1
    mem[0] = 2
    s = 0
    idx = 96
    while 128 > idx:
        _54 = mem[idx]
        uint256(stor[s + sha3(mem[0])]) = 2
        mem[0] = s + sha3(mem[0])
        u = sha3(s + sha3(mem[0]))
        t = _54
        while _54 + 64 > t:
            address(stor[u]) = mem[t + 12 len 20]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s + sha3(mem[0])) + 2
        while sha3(s + sha3(mem[0])) + uint256(stor[s + sha3(mem[0])]) > t:
            address(stor[t]) = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while sha3(2) + stor2.length > idx:
        uint256(stor[idx]) = 0
        mem[0] = idx
        s = sha3(idx)
        while sha3(idx) + uint256(stor[idx]) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[64] = 224
    require 0 < ('cd', 68).length
    mem[192] = address(('cd', 68)[0])
    stor3.length = 1
    mem[0] = 3
    s = 0
    idx = 192
    while 224 > idx:
        stor3[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor3.length > idx:
        stor3[idx] = 0
        idx = idx + 1
        continue 
    idx = 1
    while idx < ('cd', 68).length:
        require idx - 1 < ('cd', 68).length
        require idx < ('cd', 68).length
        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx - 1) + cd[68] + 36)]):
            require stor2.length - 1 < stor2.length
            require idx + 1 < ('cd', 36).length
            uint256(stor2[stor2.length])++
            mem[0] = sha3(2) + stor2.length - 1
            address(stor[sha3(('name', 'stor2', 2) + stor2.length - 1) + uint256(stor2[stor2.length])]) = address(cd[((32 * idx + 1) + cd[36] + 36)])
        else:
            _240 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 36).length
            mem[_240] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            mem[_240 + 32] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            stor2.length++
            uint256(stor2[stor2.length]) = 2
            mem[0] = sha3(2) + stor2.length
            t = sha3(sha3(2) + stor2.length)
            s = _240
            while _240 + 64 > s:
                address(stor[t]) = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(2) + stor2.length) + 2
            while sha3(sha3(2) + stor2.length) + uint256(stor2[stor2.length]) > s:
                address(stor[s]) = 0
                s = s + 1
                continue 
            require idx < ('cd', 68).length
            stor3.length++
            mem[0] = 3
            stor3[stor3.length] = address(cd[((32 * idx) + cd[68] + 36)])
        idx = idx + 1
        continue 
    idx = 0
    s = 1
    while idx < stor3.length:
        require idx < stor2.length
        mem[0] = 2
        _285 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor2[idx])) + 32
        mem[_285] = uint256(stor2[idx])
        if not uint256(stor2[idx]):
            require 0 < uint256(stor2[idx])
            require ext_code.size(mem[_285 + 44 len 20])
            staticcall mem[_285 + 44 len 20].balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[_285 + 44 len 20])
            call mem[_285 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor3[idx], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if idx != stor3.length - 1:
                    _308 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = s
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = uint256(stor2[idx])
                    t = 0
                    while t < 32 * uint256(stor2[idx]):
                        mem[mem[64] + t + 196] = mem[_285 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(stor3[idx])
                    call stor3[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * uint256(stor2[idx])) + _308 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _360 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _364 = mem[_360]
                    require mem[_360] <= 4294967296
                    require mem[_360] + 32 <= return_data.size
                    require mem[mem[_360] + _360] <= 4294967296 and mem[_360] + (32 * mem[mem[_360] + _360]) + 32 <= return_data.size
                    mem[_360 + ceil32(return_data.size)] = mem[mem[_360] + _360]
                    _377 = mem[_364 + _360]
                    t = 0
                    while t < 32 * _377:
                        mem[_360 + ceil32(return_data.size) + t + 32] = mem[_364 + _360 + t + 32]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _377) + _360 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    s = s
                    continue 
                require stor1.length
                _316 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = cd[4] / stor1.length
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor2[idx])
                s = 0
                while s < 32 * uint256(stor2[idx]):
                    mem[mem[64] + s + 196] = mem[_285 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(stor3[idx])
                call stor3[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * uint256(stor2[idx])) + _316 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _361 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _366 = mem[_361]
                require mem[_361] <= 4294967296
                require mem[_361] + 32 <= return_data.size
                require mem[mem[_361] + _361] <= 4294967296 and mem[_361] + (32 * mem[mem[_361] + _361]) + 32 <= return_data.size
                mem[_361 + ceil32(return_data.size)] = mem[mem[_361] + _361]
                _378 = mem[_366 + _361]
                s = 0
                while s < 32 * _378:
                    mem[_361 + ceil32(return_data.size) + s + 32] = mem[_366 + _361 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _378) + _361 + ceil32(return_data.size) + 32
            else:
                if idx != stor3.length - 1:
                    _311 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[4]
                    mem[mem[64] + 36] = s
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = uint256(stor2[idx])
                    t = 0
                    while t < 32 * uint256(stor2[idx]):
                        mem[mem[64] + t + 196] = mem[_285 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(stor3[idx])
                    call stor3[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * uint256(stor2[idx])) + _311 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _362 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _368 = mem[_362]
                    require mem[_362] <= 4294967296
                    require mem[_362] + 32 <= return_data.size
                    require mem[mem[_362] + _362] <= 4294967296 and mem[_362] + (32 * mem[mem[_362] + _362]) + 32 <= return_data.size
                    mem[_362 + ceil32(return_data.size)] = mem[mem[_362] + _362]
                    _379 = mem[_368 + _362]
                    t = 0
                    while t < 32 * _379:
                        mem[_362 + ceil32(return_data.size) + t + 32] = mem[_368 + _362 + t + 32]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _379) + _362 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    s = s
                    continue 
                require stor1.length
                _321 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[4] / stor1.length
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor2[idx])
                s = 0
                while s < 32 * uint256(stor2[idx]):
                    mem[mem[64] + s + 196] = mem[_285 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(stor3[idx])
                call stor3[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * uint256(stor2[idx])) + _321 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _363 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _370 = mem[_363]
                require mem[_363] <= 4294967296
                require mem[_363] + 32 <= return_data.size
                require mem[mem[_363] + _363] <= 4294967296 and mem[_363] + (32 * mem[mem[_363] + _363]) + 32 <= return_data.size
                mem[_363 + ceil32(return_data.size)] = mem[mem[_363] + _363]
                _380 = mem[_370 + _363]
                s = 0
                while s < 32 * _380:
                    mem[_363 + ceil32(return_data.size) + s + 32] = mem[_370 + _363 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _380) + _363 + ceil32(return_data.size) + 32
        else:
            mem[0] = sha3(2) + idx
            mem[_285 + 32] = address(stor2[idx])
            t = _285 + 32
            u = sha3(mem[0])
            while _285 + (32 * uint256(stor2[idx])) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            require 0 < mem[_285]
            require ext_code.size(mem[_285 + 44 len 20])
            staticcall mem[_285 + 44 len 20].balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[_285 + 44 len 20])
            call mem[_285 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor3[idx], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if idx != stor3.length - 1:
                    _409 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = s
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_285]
                    _411 = mem[_285]
                    t = 0
                    while t < 32 * _411:
                        mem[mem[64] + t + 196] = mem[_285 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(stor3[idx])
                    call stor3[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _411) + _409 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _461 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _465 = mem[_461]
                    require mem[_461] <= 4294967296
                    require mem[_461] + 32 <= return_data.size
                    require mem[mem[_461] + _461] <= 4294967296 and mem[_461] + (32 * mem[mem[_461] + _461]) + 32 <= return_data.size
                    mem[_461 + ceil32(return_data.size)] = mem[mem[_461] + _461]
                    _477 = mem[_465 + _461]
                    t = 0
                    while t < 32 * _477:
                        mem[_461 + ceil32(return_data.size) + t + 32] = mem[_465 + _461 + t + 32]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _477) + _461 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    s = s
                    continue 
                require stor1.length
                _417 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = cd[4] / stor1.length
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[_285]
                _419 = mem[_285]
                s = 0
                while s < 32 * _419:
                    mem[mem[64] + s + 196] = mem[_285 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(stor3[idx])
                call stor3[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _419) + _417 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _467 = mem[_462]
                require mem[_462] <= 4294967296
                require mem[_462] + 32 <= return_data.size
                require mem[mem[_462] + _462] <= 4294967296 and mem[_462] + (32 * mem[mem[_462] + _462]) + 32 <= return_data.size
                mem[_462 + ceil32(return_data.size)] = mem[mem[_462] + _462]
                _478 = mem[_467 + _462]
                s = 0
                while s < 32 * _478:
                    mem[_462 + ceil32(return_data.size) + s + 32] = mem[_467 + _462 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _478) + _462 + ceil32(return_data.size) + 32
            else:
                if idx != stor3.length - 1:
                    _412 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[4]
                    mem[mem[64] + 36] = s
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_285]
                    _414 = mem[_285]
                    t = 0
                    while t < 32 * _414:
                        mem[mem[64] + t + 196] = mem[_285 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(stor3[idx])
                    call stor3[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _414) + _412 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _463 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _469 = mem[_463]
                    require mem[_463] <= 4294967296
                    require mem[_463] + 32 <= return_data.size
                    require mem[mem[_463] + _463] <= 4294967296 and mem[_463] + (32 * mem[mem[_463] + _463]) + 32 <= return_data.size
                    mem[_463 + ceil32(return_data.size)] = mem[mem[_463] + _463]
                    _479 = mem[_469 + _463]
                    t = 0
                    while t < 32 * _479:
                        mem[_463 + ceil32(return_data.size) + t + 32] = mem[_469 + _463 + t + 32]
                        t = t + 32
                        continue 
                    mem[64] = (32 * _479) + _463 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    s = s
                    continue 
                require stor1.length
                _422 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[4]
                mem[mem[64] + 36] = cd[4] / stor1.length
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[_285]
                _424 = mem[_285]
                s = 0
                while s < 32 * _424:
                    mem[mem[64] + s + 196] = mem[_285 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(stor3[idx])
                call stor3[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _424) + _422 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _471 = mem[_464]
                require mem[_464] <= 4294967296
                require mem[_464] + 32 <= return_data.size
                require mem[mem[_464] + _464] <= 4294967296 and mem[_464] + (32 * mem[mem[_464] + _464]) + 32 <= return_data.size
                mem[_464 + ceil32(return_data.size)] = mem[mem[_464] + _464]
                _480 = mem[_471 + _464]
                s = 0
                while s < 32 * _480:
                    mem[_464 + ceil32(return_data.size) + s + 32] = mem[_471 + _464 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _480) + _464 + ceil32(return_data.size) + 32
        idx = idx + 1
        s = cd[4] / stor1.length
        continue 
}



}
