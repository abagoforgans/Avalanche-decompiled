contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1c9a0f4a(?)
#  - sub_d6595f3a(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function recoverEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
}

function getReserve(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function getInformation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
    staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
    staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xda67235dd5787d67955420c84ca1cecd4e5bb3b, 0x130966628846bfd36ff31a822705796e8cb8c18d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[18 len 14], 
           ext_call.return_data[32] << 144,
           ext_call.return_data[18 len 14],
           ext_call.return_data[32] << 144,
           ext_call.return_data[18 len 14],
           ext_call.return_data[32] << 144,
           ext_call.return_data[0]
}

function sub_369e5867(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    mem[96] = 2
    mem[64] = 288
    mem[192] = 0
    mem[224] = 96
    mem[256] = 96
    mem[var16001] = 192
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[192] = 0
        mem[224] = 96
        mem[256] = 96
        mem[s + 32] = 192
        s = s + 32
        idx = idx - 1
        continue 
    if not arg2:
        _137 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_137]
        mem[_137 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        require 1 < mem[_137]
        mem[_137 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_137 + 96] = address(arg3)
        mem[_137 + 128] = _137
        mem[_137 + 192] = 0
        mem[_137 + 160] = _137 + 192
        require mem[96]
        mem[128] = _137 + 96
        mem[_137 + 224] = 2
        mem[_137 + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_137 + 288] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_137 + 320] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
        mem[_137 + 352] = _137 + 224
        mem[_137 + 416] = 0
        mem[64] = _137 + 448
        mem[_137 + 384] = _137 + 416
        require 1 < mem[96]
        mem[160] = _137 + 320
        if arg2:
            idx = mem[96]
            s = arg1
            while idx:
                require idx - 1 < mem[96]
                _275 = mem[(32 * idx - 1) + 128]
                _276 = mem[mem[(32 * idx - 1) + 128]]
                _277 = mem[mem[(32 * idx - 1) + 128] + 32]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _292 = mem[_277]
                mem[mem[64] + 68] = mem[_277]
                t = 0
                u = _277 + 32
                v = mem[64] + 100
                while t < _292:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_276))
                staticcall address(_276).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _292) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _420 = mem[_409]
                require mem[_409] <= test266151307()
                require _409 + return_data.size > _409 + mem[_409] + 31
                _427 = mem[_409 + mem[_409]]
                if mem[_409 + mem[_409]] <= test266151307():
                    if (32 * mem[_409 + mem[_409]]) + 32 >= 0 and _409 + ceil32(return_data.size) + (32 * mem[_409 + mem[_409]]) + 32 <= test266151307():
                        mem[64] = _409 + ceil32(return_data.size) + (32 * mem[_409 + mem[_409]]) + 32
                        mem[_409 + ceil32(return_data.size)] = _427
                        require return_data.size >= _420 + (32 * _427) + 32
                        t = _409 + _420 + 32
                        u = _409 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _427:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_275 + 64] = _409 + ceil32(return_data.size)
                        if _427:
                            t = _409 + _420 + (32 * _427) + 31
                            s = mem[_409 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _291 = mem[64]
            mem[mem[64]] = 32
            _299 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _299:
                mem[u] = t + -_291 - 64
                _375 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _377 = mem[_375 + 32]
                mem[t + 32] = 96
                _391 = mem[_377]
                mem[t + 96] = mem[_377]
                v = 0
                w = _377 + 32
                x = t + 128
                while v < _391:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _455 = mem[_375 + 64]
                mem[t + 64] = (32 * _391) + 128
                _456 = mem[_455]
                mem[t + (32 * _391) + 128] = mem[_455]
                w = t + (32 * _391) + 160
                v = 0
                x = _455 + 32
                while v < _456:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _391) + (32 * _456) + 160
                u = u + 32
                continue 
        else:
            _269 = mem[96]
            idx = 0
            s = arg1
            while idx < _269:
                require idx < mem[96]
                _279 = mem[(32 * idx) + 128]
                _280 = mem[mem[(32 * idx) + 128]]
                _281 = mem[mem[(32 * idx) + 128] + 32]
                _282 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _293 = mem[_281]
                mem[mem[64] + 68] = mem[_281]
                s = 0
                t = _281 + 32
                u = mem[64] + 100
                while s < _293:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(_280))
                staticcall address(_280).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _282 + (32 * _293) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _412 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _422 = mem[_412]
                require mem[_412] <= test266151307()
                require _412 + return_data.size > _412 + mem[_412] + 31
                _428 = mem[_412 + mem[_412]]
                if mem[_412 + mem[_412]] <= test266151307():
                    if (32 * mem[_412 + mem[_412]]) + 32 >= 0 and _412 + ceil32(return_data.size) + (32 * mem[_412 + mem[_412]]) + 32 <= test266151307():
                        mem[64] = _412 + ceil32(return_data.size) + (32 * mem[_412 + mem[_412]]) + 32
                        mem[_412 + ceil32(return_data.size)] = _428
                        require return_data.size >= _422 + (32 * _428) + 32
                        t = _412 + _422 + 32
                        u = _412 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _428:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_279 + 64] = _412 + ceil32(return_data.size)
                        if _428 - 1 < _428:
                            t = _412 + _422 + (32 * _428) + 33
                            s = mem[(32 * _428 - 1) + _412 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _297 = mem[64]
            mem[mem[64]] = 32
            _305 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _305:
                mem[u] = t + -_297 - 64
                _379 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _381 = mem[_379 + 32]
                mem[t + 32] = 96
                _392 = mem[_381]
                mem[t + 96] = mem[_381]
                v = 0
                w = _381 + 32
                x = t + 128
                while v < _392:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _458 = mem[_379 + 64]
                mem[t + 64] = (32 * _392) + 128
                _459 = mem[_458]
                mem[t + (32 * _392) + 128] = mem[_458]
                w = t + (32 * _392) + 160
                v = 0
                x = _458 + 32
                while v < _459:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _392) + (32 * _459) + 160
                u = u + 32
                continue 
    else:
        _139 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_139]
        mem[_139 + 32] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 1 < mem[_139]
        mem[_139 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_139 + 96] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
        mem[_139 + 128] = _139
        mem[_139 + 192] = 0
        mem[_139 + 160] = _139 + 192
        require mem[96]
        mem[128] = _139 + 96
        mem[_139 + 224] = 2
        mem[_139 + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_139 + 288] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[_139 + 320] = address(arg3)
        mem[_139 + 352] = _139 + 224
        mem[_139 + 416] = 0
        mem[64] = _139 + 448
        mem[_139 + 384] = _139 + 416
        require 1 < mem[96]
        mem[160] = _139 + 320
        if arg2:
            idx = mem[96]
            s = arg1
            while idx:
                require idx - 1 < mem[96]
                _283 = mem[(32 * idx - 1) + 128]
                _284 = mem[mem[(32 * idx - 1) + 128]]
                _285 = mem[mem[(32 * idx - 1) + 128] + 32]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _295 = mem[_285]
                mem[mem[64] + 68] = mem[_285]
                t = 0
                u = _285 + 32
                v = mem[64] + 100
                while t < _295:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_284))
                staticcall address(_284).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _295) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _424 = mem[_415]
                require mem[_415] <= test266151307()
                require _415 + return_data.size > _415 + mem[_415] + 31
                _429 = mem[_415 + mem[_415]]
                if mem[_415 + mem[_415]] <= test266151307():
                    if (32 * mem[_415 + mem[_415]]) + 32 >= 0 and _415 + ceil32(return_data.size) + (32 * mem[_415 + mem[_415]]) + 32 <= test266151307():
                        mem[64] = _415 + ceil32(return_data.size) + (32 * mem[_415 + mem[_415]]) + 32
                        mem[_415 + ceil32(return_data.size)] = _429
                        require return_data.size >= _424 + (32 * _429) + 32
                        t = _415 + _424 + 32
                        u = _415 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _429:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_283 + 64] = _415 + ceil32(return_data.size)
                        if _429:
                            t = _415 + _424 + (32 * _429) + 31
                            s = mem[_415 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _294 = mem[64]
            mem[mem[64]] = 32
            _302 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _302:
                mem[u] = t + -_294 - 64
                _383 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _385 = mem[_383 + 32]
                mem[t + 32] = 96
                _393 = mem[_385]
                mem[t + 96] = mem[_385]
                v = 0
                w = _385 + 32
                x = t + 128
                while v < _393:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _461 = mem[_383 + 64]
                mem[t + 64] = (32 * _393) + 128
                _462 = mem[_461]
                mem[t + (32 * _393) + 128] = mem[_461]
                w = t + (32 * _393) + 160
                v = 0
                x = _461 + 32
                while v < _462:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _393) + (32 * _462) + 160
                u = u + 32
                continue 
        else:
            _270 = mem[96]
            idx = 0
            s = arg1
            while idx < _270:
                require idx < mem[96]
                _287 = mem[(32 * idx) + 128]
                _288 = mem[mem[(32 * idx) + 128]]
                _289 = mem[mem[(32 * idx) + 128] + 32]
                _290 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _296 = mem[_289]
                mem[mem[64] + 68] = mem[_289]
                s = 0
                t = _289 + 32
                u = mem[64] + 100
                while s < _296:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(_288))
                staticcall address(_288).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _290 + (32 * _296) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _426 = mem[_418]
                require mem[_418] <= test266151307()
                require _418 + return_data.size > _418 + mem[_418] + 31
                _430 = mem[_418 + mem[_418]]
                if mem[_418 + mem[_418]] <= test266151307():
                    if (32 * mem[_418 + mem[_418]]) + 32 >= 0 and _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32 <= test266151307():
                        mem[64] = _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32
                        mem[_418 + ceil32(return_data.size)] = _430
                        require return_data.size >= _426 + (32 * _430) + 32
                        t = _418 + _426 + 32
                        u = _418 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _430:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_287 + 64] = _418 + ceil32(return_data.size)
                        if _430 - 1 < _430:
                            t = _418 + _426 + (32 * _430) + 33
                            s = mem[(32 * _430 - 1) + _418 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _298 = mem[64]
            mem[mem[64]] = 32
            _306 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _306:
                mem[u] = t + -_298 - 64
                _387 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _389 = mem[_387 + 32]
                mem[t + 32] = 96
                _394 = mem[_389]
                mem[t + 96] = mem[_389]
                v = 0
                w = _389 + 32
                x = t + 128
                while v < _394:
                    mem[x] = mem[w + 12 len 20]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                _464 = mem[_387 + 64]
                mem[t + 64] = (32 * _394) + 128
                _465 = mem[_464]
                mem[t + (32 * _394) + 128] = mem[_464]
                w = t + (32 * _394) + 160
                v = 0
                x = _464 + 32
                while v < _465:
                    mem[w] = mem[x]
                    w = w + 32
                    v = v + 1
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + (32 * _394) + (32 * _465) + 160
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_74595a95(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    mem[96] = arg2
    require arg3 == bool(arg3)
    mem[128] = arg3
    mem[160] = arg4
    require arg5 == address(arg5)
    mem[192] = arg5
    if arg4 <= arg1:
        return 0
    mem[224] = 2
    mem[64] = 416
    mem[320] = 0
    mem[352] = 96
    mem[384] = 96
    mem[var20001] = 320
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[320] = 0
        mem[352] = 96
        mem[384] = 96
        mem[s + 32] = 320
        s = s + 32
        idx = idx - 1
        continue 
    if not arg3:
        _1136 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1136]
        mem[_1136 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        require 1 < mem[_1136]
        mem[_1136 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_1136 + 96] = address(arg5)
        mem[_1136 + 128] = _1136
        mem[_1136 + 192] = 0
        mem[_1136 + 160] = _1136 + 192
        require mem[224]
        mem[256] = _1136 + 96
        mem[_1136 + 224] = 2
        mem[_1136 + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_1136 + 288] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[_1136 + 320] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
        mem[_1136 + 352] = _1136 + 224
        mem[_1136 + 416] = 0
        mem[64] = _1136 + 448
        mem[_1136 + 384] = _1136 + 416
        require 1 < mem[224]
        mem[288] = _1136 + 320
        if arg3:
            idx = mem[224]
            s = arg2
            while idx:
                require idx - 1 < mem[224]
                _2266 = mem[(32 * idx - 1) + 256]
                _2267 = mem[mem[(32 * idx - 1) + 256]]
                _2268 = mem[mem[(32 * idx - 1) + 256] + 32]
                _2269 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _2286 = mem[_2268]
                mem[mem[64] + 68] = mem[_2268]
                s = 0
                t = _2268 + 32
                u = mem[64] + 100
                while s < _2286:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(_2267))
                staticcall address(_2267).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2269 + (32 * _2286) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3444 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3468 = mem[_3444]
                require mem[_3444] <= test266151307()
                require _3444 + return_data.size > _3444 + mem[_3444] + 31
                _3488 = mem[_3444 + mem[_3444]]
                if mem[_3444 + mem[_3444]] <= test266151307():
                    if (32 * mem[_3444 + mem[_3444]]) + 32 >= 0 and _3444 + ceil32(return_data.size) + (32 * mem[_3444 + mem[_3444]]) + 32 <= test266151307():
                        mem[64] = _3444 + ceil32(return_data.size) + (32 * mem[_3444 + mem[_3444]]) + 32
                        mem[_3444 + ceil32(return_data.size)] = _3488
                        require return_data.size >= _3468 + (32 * _3488) + 32
                        t = _3444 + _3468 + 32
                        u = _3444 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3488:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_2266 + 64] = _3444 + ceil32(return_data.size)
                        if _3488:
                            t = _3444 + _3468 + (32 * _3488) + 31
                            s = mem[_3444 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _2282 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2282] = 224
            mem[_2282 + 32] = mem[96]
            mem[_2282 + 64] = bool(mem[128])
            mem[_2282 + 96] = 1
            _2285 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2285] = 0
            require mem[224] - 1 < mem[224]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2324 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 64]]
            _2340 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 64] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2356 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require ext_code.size(mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20])
            staticcall mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2382 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2390 = mem[_2382]
            require mem[_2382] == mem[_2382 + 12 len 20]
            mem[mem[64] + 4] = address(_2324)
            mem[mem[64] + 36] = address(_2356)
            require ext_code.size(address(_2390))
            staticcall address(_2390).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2324), address(_2356)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2410 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2414 = mem[_2410]
            require mem[_2410] == mem[_2410 + 12 len 20]
            require ext_code.size(mem[_2410 + 12 len 20])
            staticcall mem[_2410 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2438] == mem[_2438 + 12 len 20]
            if address(_2324) == mem[_2438 + 12 len 20]:
                _2446 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2458 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2458:
                    mem[u] = t + -_2446 - 256
                    _3358 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3360 = mem[_3358 + 32]
                    mem[t + 32] = 96
                    _3389 = mem[_3360]
                    mem[t + 96] = mem[_3360]
                    v = 0
                    w = _3360 + 32
                    x = t + 128
                    while v < _3389:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4302 = mem[_3358 + 64]
                    mem[t + 64] = (32 * _3389) + 128
                    _4303 = mem[_4302]
                    mem[t + (32 * _3389) + 128] = mem[_4302]
                    w = t + (32 * _3389) + 160
                    v = 0
                    x = _4302 + 32
                    while v < _4303:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3389) + (32 * _4303) + 160
                    u = u + 32
                    continue 
                mem[_2446 + 128] = mem[_2282 + 32]
                mem[_2446 + 160] = bool(mem[_2282 + 64])
                mem[_2446 + 192] = bool(mem[_2282 + 96])
                mem[_2446 + 64] = t + -_2446 - 32
                _3418 = mem[_2285]
                mem[t] = mem[_2285]
                mem[t + 32 len ceil32(_3418)] = mem[_2285 + 32 len ceil32(_3418)]
                if ceil32(_3418) <= _3418:
                    _4326 = mem[64]
                    mem[mem[64]] = ceil32(_3418) + t - mem[64]
                    mem[64] = ceil32(_3418) + t + 32
                    mem[ceil32(_3418) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3418) + t + 36] = _2340
                    mem[ceil32(_3418) + t + 68] = 0
                    mem[ceil32(_3418) + t + 100] = this.address
                    mem[ceil32(_3418) + t + 132] = 128
                    _4350 = mem[_4326]
                    mem[ceil32(_3418) + t + 164] = mem[_4326]
                    mem[ceil32(_3418) + t + 196 len ceil32(_4350)] = mem[_4326 + 32 len ceil32(_4350)]
                    if ceil32(_4350) > _4350:
                        mem[ceil32(_3418) + t + _4350 + 196] = 0
                    require ext_code.size(address(_2414))
                    call address(_2414).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2340, 0, address(this.address), 128, mem[ceil32(_3418) + t + 164 len ceil32(_4350) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3418 + 32] = 0
                    _4342 = mem[64]
                    mem[mem[64]] = ceil32(_3418) + t - mem[64]
                    mem[64] = ceil32(_3418) + t + 32
                    mem[ceil32(_3418) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3418) + t + 36] = _2340
                    mem[ceil32(_3418) + t + 68] = 0
                    mem[ceil32(_3418) + t + 100] = this.address
                    mem[ceil32(_3418) + t + 132] = 128
                    _4358 = mem[_4342]
                    mem[ceil32(_3418) + t + 164] = mem[_4342]
                    mem[ceil32(_3418) + t + 196 len ceil32(_4358)] = mem[_4342 + 32 len ceil32(_4358)]
                    if ceil32(_4358) > _4358:
                        mem[ceil32(_3418) + t + _4358 + 196] = 0
                    require ext_code.size(address(_2414))
                    call address(_2414).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2340, 0, address(this.address), 128, mem[ceil32(_3418) + t + 164 len ceil32(_4358) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3418) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3418) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
            else:
                _2447 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2459 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2459:
                    mem[u] = t + -_2447 - 256
                    _3361 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3363 = mem[_3361 + 32]
                    mem[t + 32] = 96
                    _3393 = mem[_3363]
                    mem[t + 96] = mem[_3363]
                    v = 0
                    w = _3363 + 32
                    x = t + 128
                    while v < _3393:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4304 = mem[_3361 + 64]
                    mem[t + 64] = (32 * _3393) + 128
                    _4305 = mem[_4304]
                    mem[t + (32 * _3393) + 128] = mem[_4304]
                    w = t + (32 * _3393) + 160
                    v = 0
                    x = _4304 + 32
                    while v < _4305:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3393) + (32 * _4305) + 160
                    u = u + 32
                    continue 
                mem[_2447 + 128] = mem[_2282 + 32]
                mem[_2447 + 160] = bool(mem[_2282 + 64])
                mem[_2447 + 192] = bool(mem[_2282 + 96])
                mem[_2447 + 64] = t + -_2447 - 32
                _3419 = mem[_2285]
                mem[t] = mem[_2285]
                mem[t + 32 len ceil32(_3419)] = mem[_2285 + 32 len ceil32(_3419)]
                if ceil32(_3419) <= _3419:
                    _4328 = mem[64]
                    mem[mem[64]] = ceil32(_3419) + t - mem[64]
                    mem[64] = ceil32(_3419) + t + 32
                    mem[ceil32(_3419) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3419) + t + 36] = 0
                    mem[ceil32(_3419) + t + 68] = _2340
                    mem[ceil32(_3419) + t + 100] = this.address
                    mem[ceil32(_3419) + t + 132] = 128
                    _4351 = mem[_4328]
                    mem[ceil32(_3419) + t + 164] = mem[_4328]
                    mem[ceil32(_3419) + t + 196 len ceil32(_4351)] = mem[_4328 + 32 len ceil32(_4351)]
                    if ceil32(_4351) > _4351:
                        mem[ceil32(_3419) + t + _4351 + 196] = 0
                    require ext_code.size(address(_2414))
                    call address(_2414).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2340, address(this.address), 128, mem[ceil32(_3419) + t + 164 len ceil32(_4351) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3419 + 32] = 0
                    _4343 = mem[64]
                    mem[mem[64]] = ceil32(_3419) + t - mem[64]
                    mem[64] = ceil32(_3419) + t + 32
                    mem[ceil32(_3419) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3419) + t + 36] = 0
                    mem[ceil32(_3419) + t + 68] = _2340
                    mem[ceil32(_3419) + t + 100] = this.address
                    mem[ceil32(_3419) + t + 132] = 128
                    _4359 = mem[_4343]
                    mem[ceil32(_3419) + t + 164] = mem[_4343]
                    mem[ceil32(_3419) + t + 196 len ceil32(_4359)] = mem[_4343 + 32 len ceil32(_4359)]
                    if ceil32(_4359) > _4359:
                        mem[ceil32(_3419) + t + _4359 + 196] = 0
                    require ext_code.size(address(_2414))
                    call address(_2414).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2340, address(this.address), 128, mem[ceil32(_3419) + t + 164 len ceil32(_4359) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3419) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3419) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
        else:
            _2260 = mem[224]
            idx = 0
            s = arg2
            while idx < _2260:
                require idx < mem[224]
                _2270 = mem[(32 * idx) + 256]
                _2271 = mem[mem[(32 * idx) + 256]]
                _2272 = mem[mem[(32 * idx) + 256] + 32]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _2287 = mem[_2272]
                mem[mem[64] + 68] = mem[_2272]
                t = 0
                u = _2272 + 32
                v = mem[64] + 100
                while t < _2287:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_2271))
                staticcall address(_2271).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _2287) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3451 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3471 = mem[_3451]
                require mem[_3451] <= test266151307()
                require _3451 + return_data.size > _3451 + mem[_3451] + 31
                _3491 = mem[_3451 + mem[_3451]]
                if mem[_3451 + mem[_3451]] <= test266151307():
                    if (32 * mem[_3451 + mem[_3451]]) + 32 >= 0 and _3451 + ceil32(return_data.size) + (32 * mem[_3451 + mem[_3451]]) + 32 <= test266151307():
                        mem[64] = _3451 + ceil32(return_data.size) + (32 * mem[_3451 + mem[_3451]]) + 32
                        mem[_3451 + ceil32(return_data.size)] = _3491
                        require return_data.size >= _3471 + (32 * _3491) + 32
                        t = _3451 + _3471 + 32
                        u = _3451 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3491:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_2270 + 64] = _3451 + ceil32(return_data.size)
                        if _3491 - 1 < _3491:
                            t = _3451 + _3471 + (32 * _3491) + 33
                            s = mem[(32 * _3491 - 1) + _3451 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _2296 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2296] = 224
            mem[_2296 + 32] = mem[96]
            mem[_2296 + 64] = bool(mem[128])
            mem[_2296 + 96] = 1
            _2299 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2299] = 0
            require mem[224] - 1 < mem[224]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2344 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 64]]
            _2360 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 64] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2371 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require ext_code.size(mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20])
            staticcall mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2393 = mem[_2385]
            require mem[_2385] == mem[_2385 + 12 len 20]
            mem[mem[64] + 4] = address(_2344)
            mem[mem[64] + 36] = address(_2371)
            require ext_code.size(address(_2393))
            staticcall address(_2393).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2344), address(_2371)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2412 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2421 = mem[_2412]
            require mem[_2412] == mem[_2412 + 12 len 20]
            require ext_code.size(mem[_2412 + 12 len 20])
            staticcall mem[_2412 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2440] == mem[_2440 + 12 len 20]
            if address(_2344) == mem[_2440 + 12 len 20]:
                _2452 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2466 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2466:
                    mem[u] = t + -_2452 - 256
                    _3365 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3367 = mem[_3365 + 32]
                    mem[t + 32] = 96
                    _3397 = mem[_3367]
                    mem[t + 96] = mem[_3367]
                    v = 0
                    w = _3367 + 32
                    x = t + 128
                    while v < _3397:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4307 = mem[_3365 + 64]
                    mem[t + 64] = (32 * _3397) + 128
                    _4308 = mem[_4307]
                    mem[t + (32 * _3397) + 128] = mem[_4307]
                    w = t + (32 * _3397) + 160
                    v = 0
                    x = _4307 + 32
                    while v < _4308:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3397) + (32 * _4308) + 160
                    u = u + 32
                    continue 
                mem[_2452 + 128] = mem[_2296 + 32]
                mem[_2452 + 160] = bool(mem[_2296 + 64])
                mem[_2452 + 192] = bool(mem[_2296 + 96])
                mem[_2452 + 64] = t + -_2452 - 32
                _3421 = mem[_2299]
                mem[t] = mem[_2299]
                mem[t + 32 len ceil32(_3421)] = mem[_2299 + 32 len ceil32(_3421)]
                if ceil32(_3421) <= _3421:
                    _4330 = mem[64]
                    mem[mem[64]] = ceil32(_3421) + t - mem[64]
                    mem[64] = ceil32(_3421) + t + 32
                    mem[ceil32(_3421) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3421) + t + 36] = _2360
                    mem[ceil32(_3421) + t + 68] = 0
                    mem[ceil32(_3421) + t + 100] = this.address
                    mem[ceil32(_3421) + t + 132] = 128
                    _4352 = mem[_4330]
                    mem[ceil32(_3421) + t + 164] = mem[_4330]
                    mem[ceil32(_3421) + t + 196 len ceil32(_4352)] = mem[_4330 + 32 len ceil32(_4352)]
                    if ceil32(_4352) > _4352:
                        mem[ceil32(_3421) + t + _4352 + 196] = 0
                    require ext_code.size(address(_2421))
                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2360, 0, address(this.address), 128, mem[ceil32(_3421) + t + 164 len ceil32(_4352) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3421 + 32] = 0
                    _4344 = mem[64]
                    mem[mem[64]] = ceil32(_3421) + t - mem[64]
                    mem[64] = ceil32(_3421) + t + 32
                    mem[ceil32(_3421) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3421) + t + 36] = _2360
                    mem[ceil32(_3421) + t + 68] = 0
                    mem[ceil32(_3421) + t + 100] = this.address
                    mem[ceil32(_3421) + t + 132] = 128
                    _4360 = mem[_4344]
                    mem[ceil32(_3421) + t + 164] = mem[_4344]
                    mem[ceil32(_3421) + t + 196 len ceil32(_4360)] = mem[_4344 + 32 len ceil32(_4360)]
                    if ceil32(_4360) > _4360:
                        mem[ceil32(_3421) + t + _4360 + 196] = 0
                    require ext_code.size(address(_2421))
                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2360, 0, address(this.address), 128, mem[ceil32(_3421) + t + 164 len ceil32(_4360) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3421) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3421) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
            else:
                _2453 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2467 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2467:
                    mem[u] = t + -_2453 - 256
                    _3368 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3370 = mem[_3368 + 32]
                    mem[t + 32] = 96
                    _3401 = mem[_3370]
                    mem[t + 96] = mem[_3370]
                    v = 0
                    w = _3370 + 32
                    x = t + 128
                    while v < _3401:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4309 = mem[_3368 + 64]
                    mem[t + 64] = (32 * _3401) + 128
                    _4310 = mem[_4309]
                    mem[t + (32 * _3401) + 128] = mem[_4309]
                    w = t + (32 * _3401) + 160
                    v = 0
                    x = _4309 + 32
                    while v < _4310:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3401) + (32 * _4310) + 160
                    u = u + 32
                    continue 
                mem[_2453 + 128] = mem[_2296 + 32]
                mem[_2453 + 160] = bool(mem[_2296 + 64])
                mem[_2453 + 192] = bool(mem[_2296 + 96])
                mem[_2453 + 64] = t + -_2453 - 32
                _3422 = mem[_2299]
                mem[t] = mem[_2299]
                mem[t + 32 len ceil32(_3422)] = mem[_2299 + 32 len ceil32(_3422)]
                if ceil32(_3422) <= _3422:
                    _4332 = mem[64]
                    mem[mem[64]] = ceil32(_3422) + t - mem[64]
                    mem[64] = ceil32(_3422) + t + 32
                    mem[ceil32(_3422) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3422) + t + 36] = 0
                    mem[ceil32(_3422) + t + 68] = _2360
                    mem[ceil32(_3422) + t + 100] = this.address
                    mem[ceil32(_3422) + t + 132] = 128
                    _4353 = mem[_4332]
                    mem[ceil32(_3422) + t + 164] = mem[_4332]
                    mem[ceil32(_3422) + t + 196 len ceil32(_4353)] = mem[_4332 + 32 len ceil32(_4353)]
                    if ceil32(_4353) > _4353:
                        mem[ceil32(_3422) + t + _4353 + 196] = 0
                    require ext_code.size(address(_2421))
                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2360, address(this.address), 128, mem[ceil32(_3422) + t + 164 len ceil32(_4353) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3422 + 32] = 0
                    _4345 = mem[64]
                    mem[mem[64]] = ceil32(_3422) + t - mem[64]
                    mem[64] = ceil32(_3422) + t + 32
                    mem[ceil32(_3422) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3422) + t + 36] = 0
                    mem[ceil32(_3422) + t + 68] = _2360
                    mem[ceil32(_3422) + t + 100] = this.address
                    mem[ceil32(_3422) + t + 132] = 128
                    _4361 = mem[_4345]
                    mem[ceil32(_3422) + t + 164] = mem[_4345]
                    mem[ceil32(_3422) + t + 196 len ceil32(_4361)] = mem[_4345 + 32 len ceil32(_4361)]
                    if ceil32(_4361) > _4361:
                        mem[ceil32(_3422) + t + _4361 + 196] = 0
                    require ext_code.size(address(_2421))
                    call address(_2421).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2360, address(this.address), 128, mem[ceil32(_3422) + t + 164 len ceil32(_4361) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3422) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3422) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
    else:
        _1138 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_1138]
        mem[_1138 + 32] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 1 < mem[_1138]
        mem[_1138 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_1138 + 96] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
        mem[_1138 + 128] = _1138
        mem[_1138 + 192] = 0
        mem[_1138 + 160] = _1138 + 192
        require mem[224]
        mem[256] = _1138 + 96
        mem[_1138 + 224] = 2
        mem[_1138 + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[_1138 + 288] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[_1138 + 320] = address(arg5)
        mem[_1138 + 352] = _1138 + 224
        mem[_1138 + 416] = 0
        mem[64] = _1138 + 448
        mem[_1138 + 384] = _1138 + 416
        require 1 < mem[224]
        mem[288] = _1138 + 320
        if arg3:
            idx = mem[224]
            s = arg2
            while idx:
                require idx - 1 < mem[224]
                _2274 = mem[(32 * idx - 1) + 256]
                _2275 = mem[mem[(32 * idx - 1) + 256]]
                _2276 = mem[mem[(32 * idx - 1) + 256] + 32]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _2292 = mem[_2276]
                mem[mem[64] + 68] = mem[_2276]
                t = 0
                u = _2276 + 32
                v = mem[64] + 100
                while t < _2292:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_2275))
                staticcall address(_2275).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _2292) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3458 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3474 = mem[_3458]
                require mem[_3458] <= test266151307()
                require _3458 + return_data.size > _3458 + mem[_3458] + 31
                _3494 = mem[_3458 + mem[_3458]]
                if mem[_3458 + mem[_3458]] <= test266151307():
                    if (32 * mem[_3458 + mem[_3458]]) + 32 >= 0 and _3458 + ceil32(return_data.size) + (32 * mem[_3458 + mem[_3458]]) + 32 <= test266151307():
                        mem[64] = _3458 + ceil32(return_data.size) + (32 * mem[_3458 + mem[_3458]]) + 32
                        mem[_3458 + ceil32(return_data.size)] = _3494
                        require return_data.size >= _3474 + (32 * _3494) + 32
                        t = _3458 + _3474 + 32
                        u = _3458 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3494:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_2274 + 64] = _3458 + ceil32(return_data.size)
                        if _3494:
                            t = _3458 + _3474 + (32 * _3494) + 31
                            s = mem[_3458 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _2288 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2288] = 224
            mem[_2288 + 32] = mem[96]
            mem[_2288 + 64] = bool(mem[128])
            mem[_2288 + 96] = 1
            _2291 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2291] = 0
            require mem[224] - 1 < mem[224]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2332 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 64]]
            _2348 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 64] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2363 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require ext_code.size(mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20])
            staticcall mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2391 = mem[_2383]
            require mem[_2383] == mem[_2383 + 12 len 20]
            mem[mem[64] + 4] = address(_2332)
            mem[mem[64] + 36] = address(_2363)
            require ext_code.size(address(_2391))
            staticcall address(_2391).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2332), address(_2363)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2417 = mem[_2411]
            require mem[_2411] == mem[_2411 + 12 len 20]
            require ext_code.size(mem[_2411 + 12 len 20])
            staticcall mem[_2411 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2439] == mem[_2439 + 12 len 20]
            if address(_2332) == mem[_2439 + 12 len 20]:
                _2448 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2462 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2462:
                    mem[u] = t + -_2448 - 256
                    _3372 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3374 = mem[_3372 + 32]
                    mem[t + 32] = 96
                    _3405 = mem[_3374]
                    mem[t + 96] = mem[_3374]
                    v = 0
                    w = _3374 + 32
                    x = t + 128
                    while v < _3405:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4312 = mem[_3372 + 64]
                    mem[t + 64] = (32 * _3405) + 128
                    _4313 = mem[_4312]
                    mem[t + (32 * _3405) + 128] = mem[_4312]
                    w = t + (32 * _3405) + 160
                    v = 0
                    x = _4312 + 32
                    while v < _4313:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3405) + (32 * _4313) + 160
                    u = u + 32
                    continue 
                mem[_2448 + 128] = mem[_2288 + 32]
                mem[_2448 + 160] = bool(mem[_2288 + 64])
                mem[_2448 + 192] = bool(mem[_2288 + 96])
                mem[_2448 + 64] = t + -_2448 - 32
                _3424 = mem[_2291]
                mem[t] = mem[_2291]
                mem[t + 32 len ceil32(_3424)] = mem[_2291 + 32 len ceil32(_3424)]
                if ceil32(_3424) <= _3424:
                    _4334 = mem[64]
                    mem[mem[64]] = ceil32(_3424) + t - mem[64]
                    mem[64] = ceil32(_3424) + t + 32
                    mem[ceil32(_3424) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3424) + t + 36] = _2348
                    mem[ceil32(_3424) + t + 68] = 0
                    mem[ceil32(_3424) + t + 100] = this.address
                    mem[ceil32(_3424) + t + 132] = 128
                    _4354 = mem[_4334]
                    mem[ceil32(_3424) + t + 164] = mem[_4334]
                    mem[ceil32(_3424) + t + 196 len ceil32(_4354)] = mem[_4334 + 32 len ceil32(_4354)]
                    if ceil32(_4354) > _4354:
                        mem[ceil32(_3424) + t + _4354 + 196] = 0
                    require ext_code.size(address(_2417))
                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2348, 0, address(this.address), 128, mem[ceil32(_3424) + t + 164 len ceil32(_4354) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3424 + 32] = 0
                    _4346 = mem[64]
                    mem[mem[64]] = ceil32(_3424) + t - mem[64]
                    mem[64] = ceil32(_3424) + t + 32
                    mem[ceil32(_3424) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3424) + t + 36] = _2348
                    mem[ceil32(_3424) + t + 68] = 0
                    mem[ceil32(_3424) + t + 100] = this.address
                    mem[ceil32(_3424) + t + 132] = 128
                    _4362 = mem[_4346]
                    mem[ceil32(_3424) + t + 164] = mem[_4346]
                    mem[ceil32(_3424) + t + 196 len ceil32(_4362)] = mem[_4346 + 32 len ceil32(_4362)]
                    if ceil32(_4362) > _4362:
                        mem[ceil32(_3424) + t + _4362 + 196] = 0
                    require ext_code.size(address(_2417))
                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2348, 0, address(this.address), 128, mem[ceil32(_3424) + t + 164 len ceil32(_4362) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3424) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3424) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
            else:
                _2449 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2463 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2463:
                    mem[u] = t + -_2449 - 256
                    _3375 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3377 = mem[_3375 + 32]
                    mem[t + 32] = 96
                    _3409 = mem[_3377]
                    mem[t + 96] = mem[_3377]
                    v = 0
                    w = _3377 + 32
                    x = t + 128
                    while v < _3409:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4314 = mem[_3375 + 64]
                    mem[t + 64] = (32 * _3409) + 128
                    _4315 = mem[_4314]
                    mem[t + (32 * _3409) + 128] = mem[_4314]
                    w = t + (32 * _3409) + 160
                    v = 0
                    x = _4314 + 32
                    while v < _4315:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3409) + (32 * _4315) + 160
                    u = u + 32
                    continue 
                mem[_2449 + 128] = mem[_2288 + 32]
                mem[_2449 + 160] = bool(mem[_2288 + 64])
                mem[_2449 + 192] = bool(mem[_2288 + 96])
                mem[_2449 + 64] = t + -_2449 - 32
                _3425 = mem[_2291]
                mem[t] = mem[_2291]
                mem[t + 32 len ceil32(_3425)] = mem[_2291 + 32 len ceil32(_3425)]
                if ceil32(_3425) <= _3425:
                    _4336 = mem[64]
                    mem[mem[64]] = ceil32(_3425) + t - mem[64]
                    mem[64] = ceil32(_3425) + t + 32
                    mem[ceil32(_3425) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3425) + t + 36] = 0
                    mem[ceil32(_3425) + t + 68] = _2348
                    mem[ceil32(_3425) + t + 100] = this.address
                    mem[ceil32(_3425) + t + 132] = 128
                    _4355 = mem[_4336]
                    mem[ceil32(_3425) + t + 164] = mem[_4336]
                    mem[ceil32(_3425) + t + 196 len ceil32(_4355)] = mem[_4336 + 32 len ceil32(_4355)]
                    if ceil32(_4355) > _4355:
                        mem[ceil32(_3425) + t + _4355 + 196] = 0
                    require ext_code.size(address(_2417))
                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2348, address(this.address), 128, mem[ceil32(_3425) + t + 164 len ceil32(_4355) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3425 + 32] = 0
                    _4347 = mem[64]
                    mem[mem[64]] = ceil32(_3425) + t - mem[64]
                    mem[64] = ceil32(_3425) + t + 32
                    mem[ceil32(_3425) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3425) + t + 36] = 0
                    mem[ceil32(_3425) + t + 68] = _2348
                    mem[ceil32(_3425) + t + 100] = this.address
                    mem[ceil32(_3425) + t + 132] = 128
                    _4363 = mem[_4347]
                    mem[ceil32(_3425) + t + 164] = mem[_4347]
                    mem[ceil32(_3425) + t + 196 len ceil32(_4363)] = mem[_4347 + 32 len ceil32(_4363)]
                    if ceil32(_4363) > _4363:
                        mem[ceil32(_3425) + t + _4363 + 196] = 0
                    require ext_code.size(address(_2417))
                    call address(_2417).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2348, address(this.address), 128, mem[ceil32(_3425) + t + 164 len ceil32(_4363) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3425) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3425) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
        else:
            _2261 = mem[224]
            idx = 0
            s = arg2
            while idx < _2261:
                require idx < mem[224]
                _2278 = mem[(32 * idx) + 256]
                _2279 = mem[mem[(32 * idx) + 256]]
                _2280 = mem[mem[(32 * idx) + 256] + 32]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 64
                _2293 = mem[_2280]
                mem[mem[64] + 68] = mem[_2280]
                t = 0
                u = _2280 + 32
                v = mem[64] + 100
                while t < _2293:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(address(_2279))
                staticcall address(_2279).getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[mem[64] + 68 len (32 * _2293) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3465 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3477 = mem[_3465]
                require mem[_3465] <= test266151307()
                require _3465 + return_data.size > _3465 + mem[_3465] + 31
                _3497 = mem[_3465 + mem[_3465]]
                if mem[_3465 + mem[_3465]] <= test266151307():
                    if (32 * mem[_3465 + mem[_3465]]) + 32 >= 0 and _3465 + ceil32(return_data.size) + (32 * mem[_3465 + mem[_3465]]) + 32 <= test266151307():
                        mem[64] = _3465 + ceil32(return_data.size) + (32 * mem[_3465 + mem[_3465]]) + 32
                        mem[_3465 + ceil32(return_data.size)] = _3497
                        require return_data.size >= _3477 + (32 * _3497) + 32
                        t = _3465 + _3477 + 32
                        u = _3465 + ceil32(return_data.size) + 32
                        s = 0
                        while s < _3497:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        mem[_2278 + 64] = _3465 + ceil32(return_data.size)
                        if _3497 - 1 < _3497:
                            t = _3465 + _3477 + (32 * _3497) + 33
                            s = mem[(32 * _3497 - 1) + _3465 + ceil32(return_data.size) + 32]
                            continue 
                revert
            _2302 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2302] = 224
            mem[_2302 + 32] = mem[96]
            mem[_2302 + 64] = bool(mem[128])
            mem[_2302 + 96] = 1
            _2305 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2305] = 0
            require mem[224] - 1 < mem[224]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2352 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 64]]
            _2367 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 1) + mem[mem[(32 * mem[224] - 1) + 256] + 64] + 32]
            require mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2 < mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]]
            _2377 = mem[(32 * mem[mem[mem[(32 * mem[224] - 1) + 256] + 32]] - 2) + mem[mem[(32 * mem[224] - 1) + 256] + 32] + 32]
            require ext_code.size(mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20])
            staticcall mem[mem[(32 * mem[224] - 1) + 256] + 12 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2396 = mem[_2388]
            require mem[_2388] == mem[_2388 + 12 len 20]
            mem[mem[64] + 4] = address(_2352)
            mem[mem[64] + 36] = address(_2377)
            require ext_code.size(address(_2396))
            staticcall address(_2396).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_2352), address(_2377)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2424 = mem[_2413]
            require mem[_2413] == mem[_2413 + 12 len 20]
            require ext_code.size(mem[_2413 + 12 len 20])
            staticcall mem[_2413 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2441] == mem[_2441 + 12 len 20]
            if address(_2352) == mem[_2441 + 12 len 20]:
                _2456 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2468 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2468:
                    mem[u] = t + -_2456 - 256
                    _3379 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3381 = mem[_3379 + 32]
                    mem[t + 32] = 96
                    _3413 = mem[_3381]
                    mem[t + 96] = mem[_3381]
                    v = 0
                    w = _3381 + 32
                    x = t + 128
                    while v < _3413:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4317 = mem[_3379 + 64]
                    mem[t + 64] = (32 * _3413) + 128
                    _4318 = mem[_4317]
                    mem[t + (32 * _3413) + 128] = mem[_4317]
                    w = t + (32 * _3413) + 160
                    v = 0
                    x = _4317 + 32
                    while v < _4318:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3413) + (32 * _4318) + 160
                    u = u + 32
                    continue 
                mem[_2456 + 128] = mem[_2302 + 32]
                mem[_2456 + 160] = bool(mem[_2302 + 64])
                mem[_2456 + 192] = bool(mem[_2302 + 96])
                mem[_2456 + 64] = t + -_2456 - 32
                _3427 = mem[_2305]
                mem[t] = mem[_2305]
                mem[t + 32 len ceil32(_3427)] = mem[_2305 + 32 len ceil32(_3427)]
                if ceil32(_3427) <= _3427:
                    _4338 = mem[64]
                    mem[mem[64]] = ceil32(_3427) + t - mem[64]
                    mem[64] = ceil32(_3427) + t + 32
                    mem[ceil32(_3427) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3427) + t + 36] = _2367
                    mem[ceil32(_3427) + t + 68] = 0
                    mem[ceil32(_3427) + t + 100] = this.address
                    mem[ceil32(_3427) + t + 132] = 128
                    _4356 = mem[_4338]
                    mem[ceil32(_3427) + t + 164] = mem[_4338]
                    mem[ceil32(_3427) + t + 196 len ceil32(_4356)] = mem[_4338 + 32 len ceil32(_4356)]
                    if ceil32(_4356) > _4356:
                        mem[ceil32(_3427) + t + _4356 + 196] = 0
                    require ext_code.size(address(_2424))
                    call address(_2424).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2367, 0, address(this.address), 128, mem[ceil32(_3427) + t + 164 len ceil32(_4356) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3427 + 32] = 0
                    _4348 = mem[64]
                    mem[mem[64]] = ceil32(_3427) + t - mem[64]
                    mem[64] = ceil32(_3427) + t + 32
                    mem[ceil32(_3427) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3427) + t + 36] = _2367
                    mem[ceil32(_3427) + t + 68] = 0
                    mem[ceil32(_3427) + t + 100] = this.address
                    mem[ceil32(_3427) + t + 132] = 128
                    _4364 = mem[_4348]
                    mem[ceil32(_3427) + t + 164] = mem[_4348]
                    mem[ceil32(_3427) + t + 196 len ceil32(_4364)] = mem[_4348 + 32 len ceil32(_4364)]
                    if ceil32(_4364) > _4364:
                        mem[ceil32(_3427) + t + _4364 + 196] = 0
                    require ext_code.size(address(_2424))
                    call address(_2424).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _2367, 0, address(this.address), 128, mem[ceil32(_3427) + t + 164 len ceil32(_4364) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3427) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3427) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
            else:
                _2457 = mem[64]
                mem[mem[64] + 32] = 64
                mem[mem[64] + 96] = 128
                _2469 = mem[224]
                mem[mem[64] + 224] = mem[224]
                idx = 0
                s = 256
                t = mem[64] + (32 * mem[224]) + 256
                u = mem[64] + 256
                while idx < _2469:
                    mem[u] = t + -_2457 - 256
                    _3382 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    _3384 = mem[_3382 + 32]
                    mem[t + 32] = 96
                    _3417 = mem[_3384]
                    mem[t + 96] = mem[_3384]
                    v = 0
                    w = _3384 + 32
                    x = t + 128
                    while v < _3417:
                        mem[x] = mem[w + 12 len 20]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    _4319 = mem[_3382 + 64]
                    mem[t + 64] = (32 * _3417) + 128
                    _4320 = mem[_4319]
                    mem[t + (32 * _3417) + 128] = mem[_4319]
                    w = t + (32 * _3417) + 160
                    v = 0
                    x = _4319 + 32
                    while v < _4320:
                        mem[w] = mem[x]
                        w = w + 32
                        v = v + 1
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + (32 * _3417) + (32 * _4320) + 160
                    u = u + 32
                    continue 
                mem[_2457 + 128] = mem[_2302 + 32]
                mem[_2457 + 160] = bool(mem[_2302 + 64])
                mem[_2457 + 192] = bool(mem[_2302 + 96])
                mem[_2457 + 64] = t + -_2457 - 32
                _3428 = mem[_2305]
                mem[t] = mem[_2305]
                mem[t + 32 len ceil32(_3428)] = mem[_2305 + 32 len ceil32(_3428)]
                if ceil32(_3428) <= _3428:
                    _4340 = mem[64]
                    mem[mem[64]] = ceil32(_3428) + t - mem[64]
                    mem[64] = ceil32(_3428) + t + 32
                    mem[ceil32(_3428) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3428) + t + 36] = 0
                    mem[ceil32(_3428) + t + 68] = _2367
                    mem[ceil32(_3428) + t + 100] = this.address
                    mem[ceil32(_3428) + t + 132] = 128
                    _4357 = mem[_4340]
                    mem[ceil32(_3428) + t + 164] = mem[_4340]
                    mem[ceil32(_3428) + t + 196 len ceil32(_4357)] = mem[_4340 + 32 len ceil32(_4357)]
                    if ceil32(_4357) > _4357:
                        mem[ceil32(_3428) + t + _4357 + 196] = 0
                    require ext_code.size(address(_2424))
                    call address(_2424).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2367, address(this.address), 128, mem[ceil32(_3428) + t + 164 len ceil32(_4357) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                else:
                    mem[t + _3428 + 32] = 0
                    _4349 = mem[64]
                    mem[mem[64]] = ceil32(_3428) + t - mem[64]
                    mem[64] = ceil32(_3428) + t + 32
                    mem[ceil32(_3428) + t + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_3428) + t + 36] = 0
                    mem[ceil32(_3428) + t + 68] = _2367
                    mem[ceil32(_3428) + t + 100] = this.address
                    mem[ceil32(_3428) + t + 132] = 128
                    _4365 = mem[_4349]
                    mem[ceil32(_3428) + t + 164] = mem[_4349]
                    mem[ceil32(_3428) + t + 196 len ceil32(_4365)] = mem[_4349 + 32 len ceil32(_4365)]
                    if ceil32(_4365) > _4365:
                        mem[ceil32(_3428) + t + _4365 + 196] = 0
                    require ext_code.size(address(_2424))
                    call address(_2424).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2367, address(this.address), 128, mem[ceil32(_3428) + t + 164 len ceil32(_4365) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[4 len 28]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value 0, ext_call.return_data[4 len 28] wei
                         gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3428) + t + ceil32(return_data.size) + 168 len 28]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    36,
                                    0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                                    mem[ceil32(_3428) + t + ceil32(return_data.size) + ceil32(return_data.size) + 169 len 28]
    ('bool', 'ext_call.success')
    return 1
}



}
