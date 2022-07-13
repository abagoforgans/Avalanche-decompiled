contract main {




// =====================  Runtime code  =====================


#
#  - sub_fec82df8(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    revert
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function recoverTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_173a3886(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < ext_call.return_data[0]
    revert with 0, 17
}

function getLiquidity(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_160):
        revert with 0, 'Service disabled'
    staticcall arg3.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 - ext_call.return_data[12 len 20]:
        return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function sub_564c6b62(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    if not uint8(stor0.field_160):
        revert with 0, 'Service disabled'
    staticcall address(arg4).factory() with:
            gas gas_remaining wei
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 484] = address(arg1)
    mem[ceil32(return_data.size) + 516] = address(arg2)
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) - ext_call.return_data[12 len 20]:
        mem[(2 * ceil32(return_data.size)) + 480] = Mask(112, 0, ext_call.return_data[32])
        mem[(2 * ceil32(return_data.size)) + 512] = Mask(112, 0, ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 544] = 0
        mem[(6 * ceil32(return_data.size)) + 576] = 0
        mem[(6 * ceil32(return_data.size)) + 608] = 0
        mem[(6 * ceil32(return_data.size)) + 640] = 0
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[(6 * ceil32(return_data.size)) + 704] = 0
        mem[(6 * ceil32(return_data.size)) + 736] = 0
        mem[(6 * ceil32(return_data.size)) + 768] = 0
        mem[(6 * ceil32(return_data.size)) + 800] = 0
        mem[(6 * ceil32(return_data.size)) + 832] = 0
        if not address(arg1) - address(arg3):
            mem[(6 * ceil32(return_data.size)) + 864] = 2
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 928] = address(arg2)
            require ext_code.size(address(arg3))
            call address(arg3).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 964] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 996] = msg.value
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), msg.value
            mem[(6 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 960] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 964] = msg.value
            mem[(7 * ceil32(return_data.size)) + 996] = 64
            mem[(7 * ceil32(return_data.size)) + 1028] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = (7 * ceil32(return_data.size)) + 1060
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 1060 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 960
            require return_data.size >= 32
            _1331 = mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 991 < (7 * ceil32(return_data.size)) + return_data.size + 960
            _1335 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 961 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 961
            mem[(8 * ceil32(return_data.size)) + 960] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]
            require (32 * _1335) + _1331 + 32 <= return_data.size
            mem[(8 * ceil32(return_data.size)) + 992 len ceil32(32 * _1335)] = mem[(7 * ceil32(return_data.size)) + _1331 + 992 len ceil32(32 * _1335)]
            if _1335 < 1:
                revert with 0, 17
            if _1335 - 1 >= _1335:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 544] = mem[(32 * _1335 - 1) + (8 * ceil32(return_data.size)) + 992]
            mem[(6 * ceil32(return_data.size)) + 672] = gas_remaining
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.value
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return memory
                  from mem[64]
                   len 384
            if mem[(6 * ceil32(return_data.size)) + 672] < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 672] = mem[(6 * ceil32(return_data.size)) + 672] - gas_remaining
            mem[mem[64] + 4] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3851 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 576] = mem[_3851]
            mem[(6 * ceil32(return_data.size)) + 768] = 1
            mem[(6 * ceil32(return_data.size)) + 704] = gas_remaining
            _3861 = mem[(6 * ceil32(return_data.size)) + 576]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _3861
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _3861
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = gas_remaining
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return mem[mem[64] len 160], gas_remaining, mem[mem[64] + 192], 1, mem[mem[64] + 256 len 128]
            _3871 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3875 = mem[_3871]
            require mem[_3871] == bool(mem[_3871])
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 704] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = bool(_3875)
            if 0 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg2)
            if 1 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            if not address(arg1) - address(arg3):
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg3)
                _3961 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3961
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3961
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3986 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3986
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4007 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4007:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3986, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4007) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5433]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3985] = return_data.size
                    mem[_3985 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3985 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4100 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4100
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4135 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4135:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4100, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4135) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5432]
            else:
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
                if 2 >= mem[(6 * ceil32(return_data.size)) + 864]:
                    revert with 0, 50
                mem[(6 * ceil32(return_data.size)) + 960] = address(arg3)
                _3973 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3973
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3973
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3998 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3998
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4011 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4011:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3998, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4011) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5430]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3997] = return_data.size
                    mem[_3997 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3997 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4117 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4117
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4158 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4158:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4117, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4158) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5429]
        else:
            mem[(6 * ceil32(return_data.size)) + 864] = 3
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 960] = address(arg2)
            require ext_code.size(address(arg3))
            call address(arg3).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 996] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 1028] = msg.value
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), msg.value
            mem[(6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 992] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 996] = msg.value
            mem[(7 * ceil32(return_data.size)) + 1028] = 64
            mem[(7 * ceil32(return_data.size)) + 1060] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = (7 * ceil32(return_data.size)) + 1092
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 1092 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 992
            require return_data.size >= 32
            _1330 = mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
            _1334 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 993 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 993
            mem[(8 * ceil32(return_data.size)) + 992] = _1334
            require (32 * _1334) + _1330 + 32 <= return_data.size
            mem[(8 * ceil32(return_data.size)) + 1024 len ceil32(32 * _1334)] = mem[(7 * ceil32(return_data.size)) + _1330 + 1024 len ceil32(32 * _1334)]
            if _1334 < 1:
                revert with 0, 17
            if _1334 - 1 >= _1334:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 544] = mem[(32 * _1334 - 1) + (8 * ceil32(return_data.size)) + 1024]
            mem[(6 * ceil32(return_data.size)) + 672] = gas_remaining
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.value
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, 0, 160, address(this.address), block.timestamp, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return memory
                  from mem[64]
                   len 384
            if mem[(6 * ceil32(return_data.size)) + 672] < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 672] = mem[(6 * ceil32(return_data.size)) + 672] - gas_remaining
            mem[mem[64] + 4] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3850 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 576] = mem[_3850]
            mem[(6 * ceil32(return_data.size)) + 768] = 1
            mem[(6 * ceil32(return_data.size)) + 704] = gas_remaining
            _3858 = mem[(6 * ceil32(return_data.size)) + 576]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _3858
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _3858
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = gas_remaining
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return mem[mem[64] len 160], gas_remaining, mem[mem[64] + 192], 1, mem[mem[64] + 256 len 128]
            _3870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3874 = mem[_3870]
            require mem[_3870] == bool(mem[_3870])
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 704] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = bool(_3874)
            if 0 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg2)
            if 1 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            if not address(arg1) - address(arg3):
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg3)
                _3958 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3958
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3958
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3983 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3983
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4006 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4006:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3983, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4006) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5427]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3982] = return_data.size
                    mem[_3982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3982 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4096 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4096
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4132 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4132:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4096, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4132) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5426]
            else:
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
                if 2 >= mem[(6 * ceil32(return_data.size)) + 864]:
                    revert with 0, 50
                mem[(6 * ceil32(return_data.size)) + 960] = address(arg3)
                _3970 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3970
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3970
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3995 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3995
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4010 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4010:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3995, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4010) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5424]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3994 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3994] = return_data.size
                    mem[_3994 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3994 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4112 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4112
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4143 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4143:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4112, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4143) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5423]
    else:
        mem[(2 * ceil32(return_data.size)) + 480] = Mask(112, 0, ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 512] = Mask(112, 0, ext_call.return_data[32])
        mem[(6 * ceil32(return_data.size)) + 544] = 0
        mem[(6 * ceil32(return_data.size)) + 576] = 0
        mem[(6 * ceil32(return_data.size)) + 608] = 0
        mem[(6 * ceil32(return_data.size)) + 640] = 0
        mem[(6 * ceil32(return_data.size)) + 672] = 0
        mem[(6 * ceil32(return_data.size)) + 704] = 0
        mem[(6 * ceil32(return_data.size)) + 736] = 0
        mem[(6 * ceil32(return_data.size)) + 768] = 0
        mem[(6 * ceil32(return_data.size)) + 800] = 0
        mem[(6 * ceil32(return_data.size)) + 832] = 0
        if not address(arg1) - address(arg3):
            mem[(6 * ceil32(return_data.size)) + 864] = 2
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 928] = address(arg2)
            require ext_code.size(address(arg3))
            call address(arg3).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 964] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 996] = msg.value
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), msg.value
            mem[(6 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 960] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 964] = msg.value
            mem[(7 * ceil32(return_data.size)) + 996] = 64
            mem[(7 * ceil32(return_data.size)) + 1028] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = (7 * ceil32(return_data.size)) + 1060
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 1060 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 960 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 960
            require return_data.size >= 32
            _1333 = mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 991 < (7 * ceil32(return_data.size)) + return_data.size + 960
            _1337 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 961 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]) + 961
            mem[(8 * ceil32(return_data.size)) + 960] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 960 len 4], Mask(224, 32, msg.value) >> 32 + 960]
            require (32 * _1337) + _1333 + 32 <= return_data.size
            mem[(8 * ceil32(return_data.size)) + 992 len ceil32(32 * _1337)] = mem[(7 * ceil32(return_data.size)) + _1333 + 992 len ceil32(32 * _1337)]
            if _1337 < 1:
                revert with 0, 17
            if _1337 - 1 >= _1337:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 544] = mem[(32 * _1337 - 1) + (8 * ceil32(return_data.size)) + 992]
            mem[(6 * ceil32(return_data.size)) + 672] = gas_remaining
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.value
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return memory
                  from mem[64]
                   len 384
            if mem[(6 * ceil32(return_data.size)) + 672] < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 672] = mem[(6 * ceil32(return_data.size)) + 672] - gas_remaining
            mem[mem[64] + 4] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3853 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 576] = mem[_3853]
            mem[(6 * ceil32(return_data.size)) + 768] = 1
            mem[(6 * ceil32(return_data.size)) + 704] = gas_remaining
            _3867 = mem[(6 * ceil32(return_data.size)) + 576]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _3867
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _3867
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = gas_remaining
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return mem[mem[64] len 160], gas_remaining, mem[mem[64] + 192], 1, mem[mem[64] + 256 len 128]
            _3873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3877 = mem[_3873]
            require mem[_3873] == bool(mem[_3873])
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 704] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = bool(_3877)
            if 0 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg2)
            if 1 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            if not address(arg1) - address(arg3):
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg3)
                _3967 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3967
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3967
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3992 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3992
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4009 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4009:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3992, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4009) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5445]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3991 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3991] = return_data.size
                    mem[_3991 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3991 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4108 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4108
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4141 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4141:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4108, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4141) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5444]
            else:
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
                if 2 >= mem[(6 * ceil32(return_data.size)) + 864]:
                    revert with 0, 50
                mem[(6 * ceil32(return_data.size)) + 960] = address(arg3)
                _3979 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3979
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3979
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4004 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4004
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4013 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4013:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4004, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4013) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5442]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _4003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4003] = return_data.size
                    mem[_4003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_4003 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4127 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4127
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4188 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4188:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4127, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4188) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5441 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5441]
        else:
            mem[(6 * ceil32(return_data.size)) + 864] = 3
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg3)
            mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
            mem[(6 * ceil32(return_data.size)) + 960] = address(arg2)
            require ext_code.size(address(arg3))
            call address(arg3).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 996] = address(arg4)
            mem[(6 * ceil32(return_data.size)) + 1028] = msg.value
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), msg.value
            mem[(6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + 992] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 996] = msg.value
            mem[(7 * ceil32(return_data.size)) + 1028] = 64
            mem[(7 * ceil32(return_data.size)) + 1060] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = (7 * ceil32(return_data.size)) + 1092
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            staticcall address(arg4).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 1092 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 992
            require return_data.size >= 32
            _1332 = mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 1023 < (7 * ceil32(return_data.size)) + return_data.size + 992
            _1336 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 993 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 992 len 4], Mask(224, 32, msg.value) >> 32 + 992]) + 993
            mem[(8 * ceil32(return_data.size)) + 992] = _1336
            require (32 * _1336) + _1332 + 32 <= return_data.size
            mem[(8 * ceil32(return_data.size)) + 1024 len ceil32(32 * _1336)] = mem[(7 * ceil32(return_data.size)) + _1332 + 1024 len ceil32(32 * _1336)]
            if _1336 < 1:
                revert with 0, 17
            if _1336 - 1 >= _1336:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 544] = mem[(32 * _1336 - 1) + (8 * ceil32(return_data.size)) + 1024]
            mem[(6 * ceil32(return_data.size)) + 672] = gas_remaining
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.value
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 896
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args msg.value, 0, 160, address(this.address), block.timestamp, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return memory
                  from mem[64]
                   len 384
            if mem[(6 * ceil32(return_data.size)) + 672] < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 672] = mem[(6 * ceil32(return_data.size)) + 672] - gas_remaining
            mem[mem[64] + 4] = this.address
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3852 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 576] = mem[_3852]
            mem[(6 * ceil32(return_data.size)) + 768] = 1
            mem[(6 * ceil32(return_data.size)) + 704] = gas_remaining
            _3864 = mem[(6 * ceil32(return_data.size)) + 576]
            mem[mem[64] + 4] = address(arg4)
            mem[mem[64] + 36] = _3864
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), _3864
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                mem[mem[64] + 160] = gas_remaining
                mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                return mem[mem[64] len 160], gas_remaining, mem[mem[64] + 192], 1, mem[mem[64] + 256 len 128]
            _3872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3876 = mem[_3872]
            require mem[_3872] == bool(mem[_3872])
            if gas_remaining < gas_remaining:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 704] = 0
            mem[(6 * ceil32(return_data.size)) + 800] = bool(_3876)
            if 0 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 896] = address(arg2)
            if 1 >= mem[(6 * ceil32(return_data.size)) + 864]:
                revert with 0, 50
            if not address(arg1) - address(arg3):
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg3)
                _3964 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3964
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3964
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _3989 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3989
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4008 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4008:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _3989, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4008) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5439 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5439]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _3988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3988] = return_data.size
                    mem[_3988 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_3988 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4104 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4104
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4138 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4138:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4104, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4138) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5438 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5438]
            else:
                mem[(6 * ceil32(return_data.size)) + 928] = address(arg1)
                if 2 >= mem[(6 * ceil32(return_data.size)) + 864]:
                    revert with 0, 50
                mem[(6 * ceil32(return_data.size)) + 960] = address(arg3)
                _3976 = mem[(6 * ceil32(return_data.size)) + 576]
                mem[mem[64]] = 0x173a388600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _3976
                require ext_code.size(this.address)
                call this.address.0x173a3886 with:
                     gas gas_remaining wei
                    args address(arg2), address(ext_call.return_data[0]), _3976
                if ext_call.success:
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4001 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4001
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4012 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4012:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4001, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4012) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5436]
                else:
                    if not return_data.size:
                        revert with 0, 'toUint256_outOfBounds'
                    _4000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4000] = return_data.size
                    mem[_4000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size < 36:
                        revert with 0, 'toUint256_outOfBounds'
                    mem[(6 * ceil32(return_data.size)) + 608] = mem[_4000 + 36]
                    mem[(6 * ceil32(return_data.size)) + 736] = gas_remaining
                    _4122 = mem[(6 * ceil32(return_data.size)) + 576]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _4122
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _4173 = mem[(6 * ceil32(return_data.size)) + 864]
                    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 864]
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 896
                    t = mem[64] + 196
                    while idx < _4173:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _4122, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _4173) + 32]
                    if not ext_call.success:
                        mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
                        mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
                        mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
                        mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
                        mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
                        mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
                        mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
                        mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
                        mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
                        mem[mem[64] + 288] = bool(mem[(6 * ceil32(return_data.size)) + 832])
                        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
                        mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
                        return memory
                          from mem[64]
                           len 384
                    if mem[(6 * ceil32(return_data.size)) + 736] < gas_remaining:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 736] = mem[(6 * ceil32(return_data.size)) + 736] - gas_remaining
                    mem[mem[64] + 4] = this.address
                    staticcall address(arg3).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 640] = mem[_5435]
    mem[(6 * ceil32(return_data.size)) + 832] = 1
    mem[mem[64]] = mem[(6 * ceil32(return_data.size)) + 544]
    mem[mem[64] + 32] = mem[(6 * ceil32(return_data.size)) + 576]
    mem[mem[64] + 64] = mem[(6 * ceil32(return_data.size)) + 608]
    mem[mem[64] + 96] = mem[(6 * ceil32(return_data.size)) + 640]
    mem[mem[64] + 128] = mem[(6 * ceil32(return_data.size)) + 672]
    mem[mem[64] + 160] = mem[(6 * ceil32(return_data.size)) + 704]
    mem[mem[64] + 192] = mem[(6 * ceil32(return_data.size)) + 736]
    mem[mem[64] + 224] = bool(mem[(6 * ceil32(return_data.size)) + 768])
    mem[mem[64] + 256] = bool(mem[(6 * ceil32(return_data.size)) + 800])
    mem[mem[64] + 288] = 1
    mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 480]
    mem[mem[64] + 352] = mem[(2 * ceil32(return_data.size)) + 512]
    return mem[mem[64] len 288], 1, mem[mem[64] + 320 len 64]
}



}
