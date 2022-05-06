contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14 = mem[_13]
        require mem[_13] == mem[_13]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _14
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _14
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_17] == bool(mem[_17])
        idx = idx + 1
        continue 
}

function sub_023d6a8f(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    mem[100] = this.address
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ('cd', 4).length <= test266151307()
    mem[ceil32(return_data.size) + 96] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = ceil32(return_data.size) + (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            s = cd[100]
            t = 0
            t = cd[68]
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_284] == mem[_284 + 12 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(t) != mem[_284 + 12 len 20]:
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _328 = mem[_316]
                    require mem[_316] == mem[_316 + 18 len 14]
                    _337 = mem[_316 + 32]
                    require mem[_316 + 32] == mem[_316 + 50 len 14]
                    require mem[_316 + 64] == mem[_316 + 92 len 4]
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _337)
                    mem[mem[64] + 68] = Mask(112, 0, _328)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _337 << 144, Mask(112, 0, _328)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _468 = mem[_448]
                    require mem[_448] == mem[_448]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _509 = mem[_496]
                    require mem[_496] == mem[_496 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _468
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
                    idx = idx + 1
                    s = _468
                    t = 0
                    t = _509
                    continue 
                _317 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _329 = mem[_317]
                require mem[_317] == mem[_317 + 18 len 14]
                _338 = mem[_317 + 32]
                require mem[_317 + 32] == mem[_317 + 50 len 14]
                require mem[_317 + 64] == mem[_317 + 92 len 4]
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _329)
                mem[mem[64] + 68] = Mask(112, 0, _338)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _329 << 144, Mask(112, 0, _338)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _449 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _469 = mem[_449]
                require mem[_449] == mem[_449]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _510 = mem[_497]
                require mem[_497] == mem[_497 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = 0
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = _469
                idx = idx + 1
                s = _469
                t = _469
                t = _510
                continue 
            if s >= cd[100]:
                require 0 < ('cd', 4).length
                require ('cd', 4)[0] == address(('cd', 4)[0])
                mem[mem[64] + 4] = address(('cd', 4)[0])
                mem[mem[64] + 36] = cd[100]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 4)[0]), cd[100]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_296] == bool(mem[_296])
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length - 1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _556 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _564 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _568 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_568 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_568 + 36] = _556
                        mem[_568 + 68] = _564
                        mem[_568 + 100] = this.address
                        mem[_568 + 132] = 128
                        mem[_568 + 164] = mem[_568]
                        s = 0
                        while s < mem[_568]:
                            mem[_568 + s + 196] = mem[_568 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_568]) > mem[_568]:
                            mem[_568 + mem[_568] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _556, _564, address(this.address), Array(len=mem[_568], data=mem[_568 + 196 len ceil32(mem[_568])])
                    else:
                        require idx + 1 < ('cd', 4).length
                        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _588 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _596 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _600 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_600 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_600 + 36] = _588
                        mem[_600 + 68] = _596
                        mem[_600 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_600 + 132] = 128
                        mem[_600 + 164] = mem[_600]
                        s = 0
                        while s < mem[_600]:
                            mem[_600 + s + 196] = mem[_600 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_600]) > mem[_600]:
                            mem[_600 + mem[_600] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _588, _596, address(cd[((32 * idx + 1) + cd[4] + 36)]), Array(len=mem[_600], data=mem[_600 + 196 len ceil32(mem[_600])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_544] == mem[_544]
                if mem[_544] <= ext_call.return_data[0]:
                    revert with 0, 'Arbitrage is not profitable'
        else:
            mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = cd[100]
            t = 0
            t = cd[68]
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_285] == mem[_285 + 12 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(t) != mem[_285 + 12 len 20]:
                    _318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _330 = mem[_318]
                    require mem[_318] == mem[_318 + 18 len 14]
                    _340 = mem[_318 + 32]
                    require mem[_318 + 32] == mem[_318 + 50 len 14]
                    require mem[_318 + 64] == mem[_318 + 92 len 4]
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _340)
                    mem[mem[64] + 68] = Mask(112, 0, _330)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _340 << 144, Mask(112, 0, _330)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _470 = mem[_450]
                    require mem[_450] == mem[_450]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _512 = mem[_498]
                    require mem[_498] == mem[_498 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _470
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
                    idx = idx + 1
                    s = _470
                    t = 0
                    t = _512
                    continue 
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _331 = mem[_319]
                require mem[_319] == mem[_319 + 18 len 14]
                _341 = mem[_319 + 32]
                require mem[_319 + 32] == mem[_319 + 50 len 14]
                require mem[_319 + 64] == mem[_319 + 92 len 4]
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _331)
                mem[mem[64] + 68] = Mask(112, 0, _341)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _331 << 144, Mask(112, 0, _341)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _451 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _471 = mem[_451]
                require mem[_451] == mem[_451]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _513 = mem[_499]
                require mem[_499] == mem[_499 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = 0
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = _471
                idx = idx + 1
                s = _471
                t = _471
                t = _513
                continue 
            if s >= cd[100]:
                require 0 < ('cd', 4).length
                require ('cd', 4)[0] == address(('cd', 4)[0])
                mem[mem[64] + 4] = address(('cd', 4)[0])
                mem[mem[64] + 36] = cd[100]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 4)[0]), cd[100]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_301] == bool(mem[_301])
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length - 1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _558 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _565 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _569 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_569 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_569 + 36] = _558
                        mem[_569 + 68] = _565
                        mem[_569 + 100] = this.address
                        mem[_569 + 132] = 128
                        mem[_569 + 164] = mem[_569]
                        s = 0
                        while s < mem[_569]:
                            mem[_569 + s + 196] = mem[_569 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_569]) > mem[_569]:
                            mem[_569 + mem[_569] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _558, _565, address(this.address), Array(len=mem[_569], data=mem[_569 + 196 len ceil32(mem[_569])])
                    else:
                        require idx + 1 < ('cd', 4).length
                        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _590 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _597 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _601 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_601 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_601 + 36] = _590
                        mem[_601 + 68] = _597
                        mem[_601 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_601 + 132] = 128
                        mem[_601 + 164] = mem[_601]
                        s = 0
                        while s < mem[_601]:
                            mem[_601 + s + 196] = mem[_601 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_601]) > mem[_601]:
                            mem[_601 + mem[_601] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _590, _597, address(cd[((32 * idx + 1) + cd[4] + 36)]), Array(len=mem[_601], data=mem[_601 + 196 len ceil32(mem[_601])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_545] == mem[_545]
                if mem[_545] <= ext_call.return_data[0]:
                    revert with 0, 'Arbitrage is not profitable'
    else:
        mem[ceil32(return_data.size) + 128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128] = ('cd', 4).length
        mem[64] = ceil32(return_data.size) + (64 * ('cd', 4).length) + 160
        if not ('cd', 4).length:
            idx = 0
            s = cd[100]
            t = 0
            t = cd[68]
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_286] == mem[_286 + 12 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(t) != mem[_286 + 12 len 20]:
                    _320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _332 = mem[_320]
                    require mem[_320] == mem[_320 + 18 len 14]
                    _343 = mem[_320 + 32]
                    require mem[_320 + 32] == mem[_320 + 50 len 14]
                    require mem[_320 + 64] == mem[_320 + 92 len 4]
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _343)
                    mem[mem[64] + 68] = Mask(112, 0, _332)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _343 << 144, Mask(112, 0, _332)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _472 = mem[_452]
                    require mem[_452] == mem[_452]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _515 = mem[_500]
                    require mem[_500] == mem[_500 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _472
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
                    idx = idx + 1
                    s = _472
                    t = 0
                    t = _515
                    continue 
                _321 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _333 = mem[_321]
                require mem[_321] == mem[_321 + 18 len 14]
                _344 = mem[_321 + 32]
                require mem[_321 + 32] == mem[_321 + 50 len 14]
                require mem[_321 + 64] == mem[_321 + 92 len 4]
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _333)
                mem[mem[64] + 68] = Mask(112, 0, _344)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _333 << 144, Mask(112, 0, _344)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _473 = mem[_453]
                require mem[_453] == mem[_453]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _516 = mem[_501]
                require mem[_501] == mem[_501 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = 0
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = _473
                idx = idx + 1
                s = _473
                t = _473
                t = _516
                continue 
            if s >= cd[100]:
                require 0 < ('cd', 4).length
                require ('cd', 4)[0] == address(('cd', 4)[0])
                mem[mem[64] + 4] = address(('cd', 4)[0])
                mem[mem[64] + 36] = cd[100]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 4)[0]), cd[100]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _306 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_306] == bool(mem[_306])
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length - 1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _560 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _566 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _570 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_570 + 36] = _560
                        mem[_570 + 68] = _566
                        mem[_570 + 100] = this.address
                        mem[_570 + 132] = 128
                        mem[_570 + 164] = mem[_570]
                        s = 0
                        while s < mem[_570]:
                            mem[_570 + s + 196] = mem[_570 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_570]) > mem[_570]:
                            mem[_570 + mem[_570] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _560, _566, address(this.address), Array(len=mem[_570], data=mem[_570 + 196 len ceil32(mem[_570])])
                    else:
                        require idx + 1 < ('cd', 4).length
                        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _592 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _598 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _602 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_602 + 36] = _592
                        mem[_602 + 68] = _598
                        mem[_602 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_602 + 132] = 128
                        mem[_602 + 164] = mem[_602]
                        s = 0
                        while s < mem[_602]:
                            mem[_602 + s + 196] = mem[_602 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_602]) > mem[_602]:
                            mem[_602 + mem[_602] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _592, _598, address(cd[((32 * idx + 1) + cd[4] + 36)]), Array(len=mem[_602], data=mem[_602 + 196 len ceil32(mem[_602])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_546] == mem[_546]
                if mem[_546] <= ext_call.return_data[0]:
                    revert with 0, 'Arbitrage is not profitable'
        else:
            mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = cd[100]
            t = 0
            t = cd[68]
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_287] == mem[_287 + 12 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(t) != mem[_287 + 12 len 20]:
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _334 = mem[_322]
                    require mem[_322] == mem[_322 + 18 len 14]
                    _346 = mem[_322 + 32]
                    require mem[_322 + 32] == mem[_322 + 50 len 14]
                    require mem[_322 + 64] == mem[_322 + 92 len 4]
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = Mask(112, 0, _346)
                    mem[mem[64] + 68] = Mask(112, 0, _334)
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args s, _346 << 144, Mask(112, 0, _334)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _454 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _474 = mem[_454]
                    require mem[_454] == mem[_454]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _518 = mem[_502]
                    require mem[_502] == mem[_502 + 12 len 20]
                    require idx < mem[ceil32(return_data.size) + 96]
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = _474
                    require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = 0
                    idx = idx + 1
                    s = _474
                    t = 0
                    t = _518
                    continue 
                _323 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _335 = mem[_323]
                require mem[_323] == mem[_323 + 18 len 14]
                _347 = mem[_323 + 32]
                require mem[_323 + 32] == mem[_323 + 50 len 14]
                require mem[_323 + 64] == mem[_323 + 92 len 4]
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = Mask(112, 0, _335)
                mem[mem[64] + 68] = Mask(112, 0, _347)
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args s, _335 << 144, Mask(112, 0, _347)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _475 = mem[_455]
                require mem[_455] == mem[_455]
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _519 = mem[_503]
                require mem[_503] == mem[_503 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = 0
                require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160] = _475
                idx = idx + 1
                s = _475
                t = _475
                t = _519
                continue 
            if s >= cd[100]:
                require 0 < ('cd', 4).length
                require ('cd', 4)[0] == address(('cd', 4)[0])
                mem[mem[64] + 4] = address(('cd', 4)[0])
                mem[mem[64] + 36] = cd[100]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(('cd', 4)[0]), cd[100]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_311] == bool(mem[_311])
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length - 1:
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _562 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _567 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _571 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_571 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_571 + 36] = _562
                        mem[_571 + 68] = _567
                        mem[_571 + 100] = this.address
                        mem[_571 + 132] = 128
                        mem[_571 + 164] = mem[_571]
                        s = 0
                        while s < mem[_571]:
                            mem[_571 + s + 196] = mem[_571 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_571]) > mem[_571]:
                            mem[_571 + mem[_571] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _562, _567, address(this.address), Array(len=mem[_571], data=mem[_571 + 196 len ceil32(mem[_571])])
                    else:
                        require idx + 1 < ('cd', 4).length
                        require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                        require idx < ('cd', 4).length
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        require idx < mem[ceil32(return_data.size) + 96]
                        _594 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        require idx < mem[ceil32(return_data.size) + (32 * ('cd', 4).length) + 128]
                        _599 = mem[(32 * idx) + ceil32(return_data.size) + (32 * ('cd', 4).length) + 160]
                        _603 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_603 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_603 + 36] = _594
                        mem[_603 + 68] = _599
                        mem[_603 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                        mem[_603 + 132] = 128
                        mem[_603 + 164] = mem[_603]
                        s = 0
                        while s < mem[_603]:
                            mem[_603 + s + 196] = mem[_603 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_603]) > mem[_603]:
                            mem[_603 + mem[_603] + 196] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _594, _599, address(cd[((32 * idx + 1) + cd[4] + 36)]), Array(len=mem[_603], data=mem[_603 + 196 len ceil32(mem[_603])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_547] == mem[_547]
                if mem[_547] <= ext_call.return_data[0]:
                    revert with 0, 'Arbitrage is not profitable'
}



}
