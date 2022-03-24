contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transferTokenFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), address(arg2) << 64, 0, address(arg3), arg4
        if not transferFrom(address rg1, address rg2, uint256 rg3), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this'
    if arg3:
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not approve(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_efdf31a1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = cd[36]
    while idx < ('cd', 4).length:
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
        staticcall address(cd[((96 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _234 = mem[_233]
        require mem[_233] == mem[_233 + 18 len 14]
        _235 = mem[_233 + 32]
        require mem[_233 + 32] == mem[_233 + 50 len 14]
        require mem[_233 + 64] == mem[_233 + 92 len 4]
        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
        staticcall address(cd[((96 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_239]
        require mem[_239] == mem[_239 + 12 len 20]
        require idx < ('cd', 4).length
        if idx:
            require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                require idx < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                if mem[_239 + 12 len 20] == address(cd[((96 * idx) + cd[4] + 68)]):
                    if not s:
                        require Mask(112, 0, _234)
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 1000 * Mask(112, 0, _234) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, _234)
                        _293 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_293] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / 1000 * Mask(112, 0, _234)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[_293 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _234), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, _234)
                        continue 
                    if 997 * s / s != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 997 * s:
                        if not Mask(112, 0, _234):
                            if 997 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * s
                            _291 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_291] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0 / 997 * s
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            t = 0
                            while t < 0:
                                mem[t + mem[64] + 164] = mem[_291 + t + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 997 * s, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 997 * s
                            continue 
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require (997 * s) + (1000 * Mask(112, 0, _234))
                        _307 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_307] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_307 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (997 * s) + (1000 * Mask(112, 0, _234)), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        continue 
                    if 997 * Mask(112, 0, _235) * s / 997 * s != Mask(112, 0, _235):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, _234):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _305 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_305] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / 997 * s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_305 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * Mask(112, 0, _235) * s / 997 * s, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 997 * Mask(112, 0, _235) * s / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _234))
                    _325 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_325] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_325 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234)), address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    continue 
                if not s:
                    require Mask(112, 0, _235)
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 1000 * Mask(112, 0, _235) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, _235)
                    _299 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_299] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / 1000 * Mask(112, 0, _235)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_299 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _235), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, _235)
                    continue 
                if 997 * s / s != 997:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 997 * s:
                    if not Mask(112, 0, _235):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _297 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_297] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0 / 997 * s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_297 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 997 * s, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _235))
                    _313 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_313] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_313 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    continue 
                if 997 * Mask(112, 0, _234) * s / 997 * s != Mask(112, 0, _234):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, _235):
                    if 997 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 997 * s
                    _311 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_311] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / 997 * s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_311 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, _234) * s / 997 * s, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _234) * s / 997 * s
                    continue 
                if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                    revert with 0, 'SafeMath: addition overflow'
                require (997 * s) + (1000 * Mask(112, 0, _235))
                _331 = mem[64]
                mem[64] = mem[64] + 32
                mem[_331] = 0
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235))
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                t = 0
                while t < 0:
                    mem[t + mem[64] + 164] = mem[_331 + t + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(this.address), 128, 0
            else:
                require idx + 1 < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                require idx < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                if mem[_239 + 12 len 20] == address(cd[((96 * idx) + cd[4] + 68)]):
                    if not s:
                        require Mask(112, 0, _234)
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 1000 * Mask(112, 0, _234) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, _234)
                        _377 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_377] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / 1000 * Mask(112, 0, _234)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[_377 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _234), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, _234)
                        continue 
                    if 997 * s / s != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 997 * s:
                        if not Mask(112, 0, _234):
                            if 997 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * s
                            _375 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_375] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0 / 997 * s
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            t = 0
                            while t < 0:
                                mem[t + mem[64] + 164] = mem[_375 + t + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 997 * s, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 997 * s
                            continue 
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require (997 * s) + (1000 * Mask(112, 0, _234))
                        _399 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_399] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_399 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (997 * s) + (1000 * Mask(112, 0, _234)), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        continue 
                    if 997 * Mask(112, 0, _235) * s / 997 * s != Mask(112, 0, _235):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, _234):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _397 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_397] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / 997 * s
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_397 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * Mask(112, 0, _235) * s / 997 * s, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 997 * Mask(112, 0, _235) * s / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _234))
                    _421 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_421] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_421 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234)), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    continue 
                if not s:
                    require Mask(112, 0, _235)
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 1000 * Mask(112, 0, _235) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, _235)
                    _383 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_383] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / 1000 * Mask(112, 0, _235)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_383 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _235), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, _235)
                    continue 
                if 997 * s / s != 997:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 997 * s:
                    if not Mask(112, 0, _235):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _381 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_381] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0 / 997 * s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_381 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 997 * s, 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _235))
                    _405 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_405] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_405 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    continue 
                if 997 * Mask(112, 0, _234) * s / 997 * s != Mask(112, 0, _234):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, _235):
                    if 997 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 997 * s
                    _403 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_403] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / 997 * s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_403 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, _234) * s / 997 * s, 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _234) * s / 997 * s
                    continue 
                if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                    revert with 0, 'SafeMath: addition overflow'
                require (997 * s) + (1000 * Mask(112, 0, _235))
                _427 = mem[64]
                mem[64] = mem[64] + 32
                mem[_427] = 0
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235))
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                t = 0
                while t < 0:
                    mem[t + mem[64] + 164] = mem[_427 + t + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
        else:
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = s
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[((96 * idx) + cd[4] + 36)]), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_243] == bool(mem[_243])
            require idx < ('cd', 4).length
            require cd[((96 * idx) + cd[4] + 100)] == address(cd[((96 * idx) + cd[4] + 100)])
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == address(cd[((96 * idx) + cd[4] + 100)]):
                require idx < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                if address(_240) == address(cd[((96 * idx) + cd[4] + 68)]):
                    if not s:
                        require Mask(112, 0, _234)
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 1000 * Mask(112, 0, _234) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, _234)
                        _489 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_489] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / 1000 * Mask(112, 0, _234)
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[_489 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _234), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, _234)
                        continue 
                    if 997 * s / s != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 997 * s:
                        if not Mask(112, 0, _234):
                            if 997 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * s
                            _487 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_487] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0 / 997 * s
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            t = 0
                            while t < 0:
                                mem[t + mem[64] + 164] = mem[_487 + t + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 997 * s, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 997 * s
                            continue 
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require (997 * s) + (1000 * Mask(112, 0, _234))
                        _507 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_507] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_507 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (997 * s) + (1000 * Mask(112, 0, _234)), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        continue 
                    if 997 * Mask(112, 0, _235) * s / 997 * s != Mask(112, 0, _235):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, _234):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _505 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_505] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / 997 * s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_505 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * Mask(112, 0, _235) * s / 997 * s, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 997 * Mask(112, 0, _235) * s / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _234))
                    _521 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_521] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_521 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234)), address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    continue 
                if not s:
                    require Mask(112, 0, _235)
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 1000 * Mask(112, 0, _235) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, _235)
                    _495 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_495] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / 1000 * Mask(112, 0, _235)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_495 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _235), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, _235)
                    continue 
                if 997 * s / s != 997:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 997 * s:
                    if not Mask(112, 0, _235):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _493 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_493] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0 / 997 * s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_493 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 997 * s, 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _235))
                    _513 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_513] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_513 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    continue 
                if 997 * Mask(112, 0, _234) * s / 997 * s != Mask(112, 0, _234):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, _235):
                    if 997 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 997 * s
                    _511 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_511] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / 997 * s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_511 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, _234) * s / 997 * s, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _234) * s / 997 * s
                    continue 
                if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                    revert with 0, 'SafeMath: addition overflow'
                require (997 * s) + (1000 * Mask(112, 0, _235))
                _527 = mem[64]
                mem[64] = mem[64] + 32
                mem[_527] = 0
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235))
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                t = 0
                while t < 0:
                    mem[t + mem[64] + 164] = mem[_527 + t + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(this.address), 128, 0
            else:
                require idx + 1 < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 132)] == address(cd[((96 * idx) + cd[4] + 132)])
                require idx < ('cd', 4).length
                require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
                if address(_240) == address(cd[((96 * idx) + cd[4] + 68)]):
                    if not s:
                        require Mask(112, 0, _234)
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 1000 * Mask(112, 0, _234) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, _234)
                        _573 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_573] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / 1000 * Mask(112, 0, _234)
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[_573 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 1000 * Mask(112, 0, _234), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, _234)
                        continue 
                    if 997 * s / s != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 997 * s:
                        if not Mask(112, 0, _234):
                            if 997 * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require 997 * s
                            _571 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_571] = 0
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 0 / 997 * s
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            t = 0
                            while t < 0:
                                mem[t + mem[64] + 164] = mem[_571 + t + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                            call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 997 * s, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = 0 / 997 * s
                            continue 
                        if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                            revert with 0, 'SafeMath: addition overflow'
                        require (997 * s) + (1000 * Mask(112, 0, _234))
                        _591 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_591] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_591 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0 / (997 * s) + (1000 * Mask(112, 0, _234)), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / (997 * s) + (1000 * Mask(112, 0, _234))
                        continue 
                    if 997 * Mask(112, 0, _235) * s / 997 * s != Mask(112, 0, _235):
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not Mask(112, 0, _234):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _589 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_589] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / 997 * s
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_589 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 997 * Mask(112, 0, _235) * s / 997 * s, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 997 * Mask(112, 0, _235) * s / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _234) / Mask(112, 0, _234) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _234)) < 1000 * Mask(112, 0, _234):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _234))
                    _605 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_605] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_605 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234)), address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _235) * s / (997 * s) + (1000 * Mask(112, 0, _234))
                    continue 
                if not s:
                    require Mask(112, 0, _235)
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 1000 * Mask(112, 0, _235) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * Mask(112, 0, _235)
                    _579 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_579] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / 1000 * Mask(112, 0, _235)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[_579 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / 1000 * Mask(112, 0, _235), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, _235)
                    continue 
                if 997 * s / s != 997:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 997 * s:
                    if not Mask(112, 0, _235):
                        if 997 * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 997 * s
                        _577 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_577] = 0
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0 / 997 * s
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[_577 + t + 32]
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                        call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0 / 997 * s, 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = 0 / 997 * s
                        continue 
                    if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                        revert with 0, 'SafeMath: addition overflow'
                    require (997 * s) + (1000 * Mask(112, 0, _235))
                    _597 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_597] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_597 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0 / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 0 / (997 * s) + (1000 * Mask(112, 0, _235))
                    continue 
                if 997 * Mask(112, 0, _234) * s / 997 * s != Mask(112, 0, _234):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not Mask(112, 0, _235):
                    if 997 * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 997 * s
                    _595 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_595] = 0
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / 997 * s
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[_595 + t + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                    call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, _234) * s / 997 * s, 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * Mask(112, 0, _234) * s / 997 * s
                    continue 
                if 1000 * Mask(112, 0, _235) / Mask(112, 0, _235) != 1000:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (997 * s) + (1000 * Mask(112, 0, _235)) < 1000 * Mask(112, 0, _235):
                    revert with 0, 'SafeMath: addition overflow'
                require (997 * s) + (1000 * Mask(112, 0, _235))
                _611 = mem[64]
                mem[64] = mem[64] + 32
                mem[_611] = 0
                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235))
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[4] + 132)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                t = 0
                while t < 0:
                    mem[t + mem[64] + 164] = mem[_611 + t + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[((96 * idx) + cd[4] + 36)]))
                call address(cd[((96 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235)), 0, address(cd[((96 * idx) + cd[4] + 132)]), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = 997 * Mask(112, 0, _234) * s / (997 * s) + (1000 * Mask(112, 0, _235))
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_227] <= ext_call.return_data[0]:
        revert with 0, 'E1'
}



}
