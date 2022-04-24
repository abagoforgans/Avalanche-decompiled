contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
array of address stor1;
uint256 stor2;
array of address stor4;

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
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    if not arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    else:
        call arg1.0xa9059cbb with:
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
    stor3.length = 1
    mem[0] = 3
    s = 0
    idx = 96
    while 128 > idx:
        _56 = mem[idx]
        uint256(stor[s + sha3(mem[0])]) = 2
        mem[0] = s + sha3(mem[0])
        u = sha3(s + sha3(mem[0]))
        t = _56
        while _56 + 64 > t:
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
    while sha3(3) + stor3.length > idx:
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
    stor4.length = 1
    mem[0] = 4
    s = 0
    idx = 192
    while 224 > idx:
        stor4[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor4.length > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    idx = 1
    while idx < ('cd', 68).length:
        require idx - 1 < ('cd', 68).length
        require idx < ('cd', 68).length
        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx - 1) + cd[68] + 36)]):
            require stor3.length - 1 < stor3.length
            require idx + 1 < ('cd', 36).length
            uint256(stor3[stor3.length])++
            mem[0] = sha3(3) + stor3.length - 1
            address(stor[sha3(('name', 'stor3', 3) + stor3.length - 1) + uint256(stor3[stor3.length])]) = address(cd[((32 * idx + 1) + cd[36] + 36)])
        else:
            _249 = mem[64]
            mem[64] = mem[64] + 64
            require idx < ('cd', 36).length
            mem[_249] = address(cd[((32 * idx) + cd[36] + 36)])
            require idx + 1 < ('cd', 36).length
            mem[_249 + 32] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            stor3.length++
            uint256(stor3[stor3.length]) = 2
            mem[0] = sha3(3) + stor3.length
            t = sha3(sha3(3) + stor3.length)
            s = _249
            while _249 + 64 > s:
                address(stor[t]) = mem[s + 12 len 20]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(3) + stor3.length) + 2
            while sha3(sha3(3) + stor3.length) + uint256(stor3[stor3.length]) > s:
                address(stor[s]) = 0
                s = s + 1
                continue 
            require idx < ('cd', 68).length
            stor4.length++
            mem[0] = 4
            stor4[stor4.length] = address(cd[((32 * idx) + cd[68] + 36)])
        idx = idx + 1
        continue 
    require stor2
    idx = 0
    s = 10^18 / stor2
    while idx < stor4.length:
        require idx < stor3.length
        mem[0] = 3
        _299 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[idx])) + 32
        mem[_299] = uint256(stor3[idx])
        if not uint256(stor3[idx]):
            _301 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = uint256(stor3[idx])
            s = 0
            while s < 32 * uint256(stor3[idx]):
                mem[mem[64] + s + 100] = mem[_299 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor4[idx])
            staticcall stor4[idx].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _301 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _381 = mem[_379]
            require mem[_379] <= 4294967296
            require mem[_379] + 32 <= return_data.size
            require mem[mem[_379] + _379] <= 4294967296 and mem[_379] + (32 * mem[mem[_379] + _379]) + 32 <= return_data.size
            mem[_379 + ceil32(return_data.size)] = mem[mem[_379] + _379]
            _390 = mem[_381 + _379]
            s = 0
            while s < 32 * _390:
                mem[_379 + ceil32(return_data.size) + s + 32] = mem[_381 + _379 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _390) + _379 + ceil32(return_data.size) + 32
            if mem[_379 + ceil32(return_data.size)] - 1 < mem[_379 + ceil32(return_data.size)]:
                s = floor32(_390) + 1
                s = mem[(32 * mem[_379 + ceil32(return_data.size)] - 1) + _379 + ceil32(return_data.size) + 32]
                continue 
        else:
            mem[0] = sha3(3) + idx
            mem[_299 + 32] = address(stor3[idx])
            t = _299 + 32
            u = sha3(mem[0])
            while _299 + (32 * uint256(stor3[idx])) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_299]
            _451 = mem[_299]
            s = 0
            while s < 32 * _451:
                mem[mem[64] + s + 100] = mem[_299 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor4[idx])
            staticcall stor4[idx].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _451) + _449 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _527 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _529 = mem[_527]
            require mem[_527] <= 4294967296
            require mem[_527] + 32 <= return_data.size
            require mem[mem[_527] + _527] <= 4294967296 and mem[_527] + (32 * mem[mem[_527] + _527]) + 32 <= return_data.size
            mem[_527 + ceil32(return_data.size)] = mem[mem[_527] + _527]
            _543 = mem[_529 + _527]
            s = 0
            while s < 32 * _543:
                mem[_527 + ceil32(return_data.size) + s + 32] = mem[_529 + _527 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _543) + _527 + ceil32(return_data.size) + 32
            if mem[_527 + ceil32(return_data.size)] - 1 < mem[_527 + ceil32(return_data.size)]:
                idx = idx + 1
                s = mem[(32 * mem[_527 + ceil32(return_data.size)] - 1) + _527 + ceil32(return_data.size) + 32]
                continue 
        revert
    if s <= 10^18 / stor2:
        revert with 0, 'eris'
    idx = 0
    t = 2 * 10^18
    while idx < stor4.length:
        require idx < stor3.length
        mem[0] = 3
        _378 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[idx])) + 32
        mem[_378] = uint256(stor3[idx])
        if not uint256(stor3[idx]):
            _383 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = uint256(stor3[idx])
            s = 0
            while s < 32 * uint256(stor3[idx]):
                mem[mem[64] + s + 100] = mem[_378 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor4[idx])
            staticcall stor4[idx].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _383 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _458 = mem[_455]
            require mem[_455] <= 4294967296
            require mem[_455] + 32 <= return_data.size
            require mem[mem[_455] + _455] <= 4294967296 and mem[_455] + (32 * mem[mem[_455] + _455]) + 32 <= return_data.size
            mem[_455 + ceil32(return_data.size)] = mem[mem[_455] + _455]
            _466 = mem[_458 + _455]
            s = 0
            while s < 32 * _466:
                mem[_455 + ceil32(return_data.size) + s + 32] = mem[_458 + _455 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _466) + _455 + ceil32(return_data.size) + 32
            if mem[_455 + ceil32(return_data.size)] - 1 < mem[_455 + ceil32(return_data.size)]:
                s = floor32(_466) + 1
                t = mem[(32 * mem[_455 + ceil32(return_data.size)] - 1) + _455 + ceil32(return_data.size) + 32]
                continue 
        else:
            mem[0] = sha3(3) + idx
            mem[_378 + 32] = address(stor3[idx])
            s = _378 + 32
            u = sha3(mem[0])
            while _378 + (32 * uint256(stor3[idx])) > s:
                mem[s + 32] = stor1[u]
                s = s + 32
                u = u + 1
                continue 
            _516 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_378]
            _518 = mem[_378]
            s = 0
            while s < 32 * _518:
                mem[mem[64] + s + 100] = mem[_378 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(stor4[idx])
            staticcall stor4[idx].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _518) + _516 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_628]
            require mem[_628] <= 4294967296
            require mem[_628] + 32 <= return_data.size
            require mem[mem[_628] + _628] <= 4294967296 and mem[_628] + (32 * mem[mem[_628] + _628]) + 32 <= return_data.size
            mem[_628 + ceil32(return_data.size)] = mem[mem[_628] + _628]
            _648 = mem[_637 + _628]
            s = 0
            while s < 32 * _648:
                mem[_628 + ceil32(return_data.size) + s + 32] = mem[_637 + _628 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _648) + _628 + ceil32(return_data.size) + 32
            if mem[_628 + ceil32(return_data.size)] - 1 < mem[_628 + ceil32(return_data.size)]:
                idx = idx + 1
                t = mem[(32 * mem[_628 + ceil32(return_data.size)] - 1) + _628 + ceil32(return_data.size) + 32]
                continue 
        revert
    require (2 * 10^18 * s) - (10^18 / stor2 * t)
    u = ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t) * (2 * 10^18 * s * t) - (10^18 / stor2 * s * t) / (2 * 10^18 * s) - (10^18 / stor2 * t)) + 1 / 2
    v = (2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t) * (2 * 10^18 * s * t) - (10^18 / stor2 * s * t) / (2 * 10^18 * s) - (10^18 / stor2 * t)
    while u < v:
        require u
        u = ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t) * (2 * 10^18 * s * t) - (10^18 / stor2 * s * t) / (2 * 10^18 * s) - (10^18 / stor2 * t) / u) + u / 2
        v = u
        continue 
    if v < (2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t):
        revert with 0, 'eris3'
    require stor2
    if ((2 * 10^18 * s * t) - (10^18 / stor2 * s * t) / (2 * 10^18 * s) - (10^18 / stor2 * t)) - (2 * v) + ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) <= 10^16 / stor2:
        revert with 0, 'eris2'
    require stor2
    idx = 0
    u = 1
    while idx < stor4.length:
        require idx < stor3.length
        mem[0] = 3
        _524 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor3[idx])) + 32
        mem[_524] = uint256(stor3[idx])
        if not uint256(stor3[idx]):
            require 0 < uint256(stor3[idx])
            require ext_code.size(mem[_524 + 44 len 20])
            staticcall mem[_524 + 44 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[_524 + 44 len 20])
            call mem[_524 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4[idx], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if idx != stor4.length - 1:
                    _566 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = u
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = uint256(stor3[idx])
                    s = 0
                    while s < 32 * uint256(stor3[idx]):
                        mem[mem[64] + s + 196] = mem[_524 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor4[idx])
                    call stor4[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _566 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _629 = mem[_624]
                    require mem[_624] <= 4294967296
                    require mem[_624] + 32 <= return_data.size
                    require mem[mem[_624] + _624] <= 4294967296 and mem[_624] + (32 * mem[mem[_624] + _624]) + 32 <= return_data.size
                    mem[_624 + ceil32(return_data.size)] = mem[mem[_624] + _624]
                    _644 = mem[_629 + _624]
                    s = 0
                    while s < 32 * _644:
                        mem[_624 + ceil32(return_data.size) + s + 32] = mem[_629 + _624 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _644) + _624 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    u = u
                    continue 
                require stor2
                _574 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor3[idx])
                u = 0
                while u < 32 * uint256(stor3[idx]):
                    mem[mem[64] + u + 196] = mem[_524 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor4[idx])
                call stor4[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _574 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _625 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_625]
                require mem[_625] <= 4294967296
                require mem[_625] + 32 <= return_data.size
                require mem[mem[_625] + _625] <= 4294967296 and mem[_625] + (32 * mem[mem[_625] + _625]) + 32 <= return_data.size
                mem[_625 + ceil32(return_data.size)] = mem[mem[_625] + _625]
                _645 = mem[_631 + _625]
                u = 0
                while u < 32 * _645:
                    mem[_625 + ceil32(return_data.size) + u + 32] = mem[_631 + _625 + u + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _645) + _625 + ceil32(return_data.size) + 32
            else:
                if idx != stor4.length - 1:
                    _569 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                    mem[mem[64] + 36] = u
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = uint256(stor3[idx])
                    s = 0
                    while s < 32 * uint256(stor3[idx]):
                        mem[mem[64] + s + 196] = mem[_524 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor4[idx])
                    call stor4[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _569 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _626 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _633 = mem[_626]
                    require mem[_626] <= 4294967296
                    require mem[_626] + 32 <= return_data.size
                    require mem[mem[_626] + _626] <= 4294967296 and mem[_626] + (32 * mem[mem[_626] + _626]) + 32 <= return_data.size
                    mem[_626 + ceil32(return_data.size)] = mem[mem[_626] + _626]
                    _646 = mem[_633 + _626]
                    s = 0
                    while s < 32 * _646:
                        mem[_626 + ceil32(return_data.size) + s + 32] = mem[_633 + _626 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _646) + _626 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    u = u
                    continue 
                require stor2
                _579 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 36] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = uint256(stor3[idx])
                u = 0
                while u < 32 * uint256(stor3[idx]):
                    mem[mem[64] + u + 196] = mem[_524 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor4[idx])
                call stor4[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * uint256(stor3[idx])) + _579 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _635 = mem[_627]
                require mem[_627] <= 4294967296
                require mem[_627] + 32 <= return_data.size
                require mem[mem[_627] + _627] <= 4294967296 and mem[_627] + (32 * mem[mem[_627] + _627]) + 32 <= return_data.size
                mem[_627 + ceil32(return_data.size)] = mem[mem[_627] + _627]
                _647 = mem[_635 + _627]
                u = 0
                while u < 32 * _647:
                    mem[_627 + ceil32(return_data.size) + u + 32] = mem[_635 + _627 + u + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _647) + _627 + ceil32(return_data.size) + 32
        else:
            mem[0] = sha3(3) + idx
            mem[_524 + 32] = address(stor3[idx])
            w = _524 + 32
            x = sha3(mem[0])
            while _524 + (32 * uint256(stor3[idx])) > w:
                mem[w + 32] = stor1[x]
                w = w + 32
                x = x + 1
                continue 
            require 0 < mem[_524]
            require ext_code.size(mem[_524 + 44 len 20])
            staticcall mem[_524 + 44 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[_524 + 44 len 20])
            call mem[_524 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor4[idx], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if idx:
                if idx != stor4.length - 1:
                    _685 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = u
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_524]
                    _687 = mem[_524]
                    s = 0
                    while s < 32 * _687:
                        mem[mem[64] + s + 196] = mem[_524 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor4[idx])
                    call stor4[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _687) + _685 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _737 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _741 = mem[_737]
                    require mem[_737] <= 4294967296
                    require mem[_737] + 32 <= return_data.size
                    require mem[mem[_737] + _737] <= 4294967296 and mem[_737] + (32 * mem[mem[_737] + _737]) + 32 <= return_data.size
                    mem[_737 + ceil32(return_data.size)] = mem[mem[_737] + _737]
                    _753 = mem[_741 + _737]
                    s = 0
                    while s < 32 * _753:
                        mem[_737 + ceil32(return_data.size) + s + 32] = mem[_741 + _737 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _753) + _737 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    u = u
                    continue 
                require stor2
                _693 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[_524]
                _695 = mem[_524]
                u = 0
                while u < 32 * _695:
                    mem[mem[64] + u + 196] = mem[_524 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor4[idx])
                call stor4[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _695) + _693 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _743 = mem[_738]
                require mem[_738] <= 4294967296
                require mem[_738] + 32 <= return_data.size
                require mem[mem[_738] + _738] <= 4294967296 and mem[_738] + (32 * mem[mem[_738] + _738]) + 32 <= return_data.size
                mem[_738 + ceil32(return_data.size)] = mem[mem[_738] + _738]
                _754 = mem[_743 + _738]
                u = 0
                while u < 32 * _754:
                    mem[_738 + ceil32(return_data.size) + u + 32] = mem[_743 + _738 + u + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _754) + _738 + ceil32(return_data.size) + 32
            else:
                if idx != stor4.length - 1:
                    _688 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                    mem[mem[64] + 36] = u
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 60
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[_524]
                    _690 = mem[_524]
                    s = 0
                    while s < 32 * _690:
                        mem[mem[64] + s + 196] = mem[_524 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(stor4[idx])
                    call stor4[idx].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len (32 * _690) + _688 + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _739 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _745 = mem[_739]
                    require mem[_739] <= 4294967296
                    require mem[_739] + 32 <= return_data.size
                    require mem[mem[_739] + _739] <= 4294967296 and mem[_739] + (32 * mem[mem[_739] + _739]) + 32 <= return_data.size
                    mem[_739 + ceil32(return_data.size)] = mem[mem[_739] + _739]
                    _755 = mem[_745 + _739]
                    s = 0
                    while s < 32 * _755:
                        mem[_739 + ceil32(return_data.size) + s + 32] = mem[_745 + _739 + s + 32]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _755) + _739 + ceil32(return_data.size) + 32
                    idx = idx + 1
                    u = u
                    continue 
                require stor2
                _698 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 36] = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 60
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[_524]
                _700 = mem[_524]
                u = 0
                while u < 32 * _700:
                    mem[mem[64] + u + 196] = mem[_524 + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor4[idx])
                call stor4[idx].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * _700) + _698 + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _740 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _747 = mem[_740]
                require mem[_740] <= 4294967296
                require mem[_740] + 32 <= return_data.size
                require mem[mem[_740] + _740] <= 4294967296 and mem[_740] + (32 * mem[mem[_740] + _740]) + 32 <= return_data.size
                mem[_740 + ceil32(return_data.size)] = mem[mem[_740] + _740]
                _756 = mem[_747 + _740]
                u = 0
                while u < 32 * _756:
                    mem[_740 + ceil32(return_data.size) + u + 32] = mem[_747 + _740 + u + 32]
                    u = u + 32
                    continue 
                mem[64] = (32 * _756) + _740 + ceil32(return_data.size) + 32
        idx = idx + 1
        u = v - ((2 * 10^18 * t * 10^18 / stor2) - (2 * 10^18 * s * 10^18 / stor2) / (2 * 10^18 * s) - (10^18 / stor2 * t)) / stor2
        continue 
}



}
