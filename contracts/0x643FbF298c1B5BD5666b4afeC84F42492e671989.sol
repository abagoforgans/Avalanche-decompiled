contract main {




// =====================  Runtime code  =====================


address adminAddress;
address veeAddress;
address usdtAddress;
address sub_5e059940Address;
address routerAddress;
uint256 stor5;

function usdt() payable {
    return usdtAddress
}

function vee() payable {
    return veeAddress
}

function sub_5e059940(?) payable {
    return sub_5e059940Address
}

function admin() payable {
    return adminAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setProfitThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'permission deny'
    stor5 = arg1
}

function sub_aaeefbcb(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'permission deny'
    if arg1 <= arg2:
        revert with 0, 'price error'
    mem[96] = 2
    mem[128] = veeAddress
    mem[160] = usdtAddress
    require ext_code.size(sub_5e059940Address)
    staticcall sub_5e059940Address.getReserves() with:
            gas gas_remaining wei
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if veeAddress >= usdtAddress:
        if ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] and arg2 > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18 <= 3:
            if not ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18:
                revert with 0, 18
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < ext_call.return_data[50 len 14]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _288 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _290 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _290
            require return_data.size >= _288 + (32 * _290) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _290] = mem[ceil32(return_data.size) + _288 + 224 len 32 * _290]
            if 1 >= _290:
                revert with 0, 50
            _552 = mem[(2 * ceil32(return_data.size)) + 256]
            if (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
                revert with 0, 'no profits'
            if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
                revert with 0, 17
            mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18)
            emit Test(mem[mem[64]]);
            if _552 - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18) < stor5:
                revert with 0, 'profits not enough'
            if 99999999 > !block.timestamp:
                revert with 0, 17
            mem[mem[64] + 4] = adminAddress
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(veeAddress)
            call veeAddress.0x23b872dd with:
                 gas gas_remaining wei
                args adminAddress, this.address, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _586 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_586] == bool(mem[_586])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = routerAddress
            require ext_code.size(veeAddress)
            staticcall veeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _598 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_598] >= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
                mem[mem[64] + 4] = adminAddress
                require ext_code.size(veeAddress)
                staticcall veeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args adminAddress
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _622 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_622] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'blance insufficient'
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])
                mem[mem[64] + 36] = stor5
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = adminAddress
                mem[mem[64] + 132] = block.timestamp + 99999999
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _808 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _812 = mem[_808]
                require mem[_808] <= test266151307()
                require _808 + mem[_808] + 31 < _808 + return_data.size
                _816 = mem[_808 + mem[_808]]
                if mem[_808 + mem[_808]] > test266151307():
                    revert with 0, 65
                if _808 + ceil32(return_data.size) + ceil32(32 * mem[_808 + mem[_808]]) + 1 > test266151307() or ceil32(32 * mem[_808 + mem[_808]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _808 + ceil32(return_data.size) + ceil32(32 * mem[_808 + mem[_808]]) + 1
                mem[_808 + ceil32(return_data.size)] = _816
                require return_data.size >= _812 + (32 * _816) + 32
                mem[_808 + ceil32(return_data.size) + 32 len 32 * _816] = mem[_808 + _812 + 32 len 32 * _816]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _816
                mem[mem[64] + 64 len 32 * _816] = mem[_808 + ceil32(return_data.size) + 32 len 32 * _816]
                return Array(len=_816, data=mem[mem[64] + 64 len 32 * _816])
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = 10000000000 * 10^18
            require ext_code.size(veeAddress)
            call veeAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, 10000000000 * 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _623 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_623] == bool(mem[_623])
            mem[mem[64] + 4] = adminAddress
            require ext_code.size(veeAddress)
            staticcall veeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args adminAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_650] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'blance insufficient'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 36] = stor5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = adminAddress
            mem[mem[64] + 132] = block.timestamp + 99999999
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _809 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _813 = mem[_809]
            require mem[_809] <= test266151307()
            require _809 + mem[_809] + 31 < _809 + return_data.size
            _817 = mem[_809 + mem[_809]]
            if mem[_809 + mem[_809]] > test266151307():
                revert with 0, 65
            if _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1 > test266151307() or ceil32(32 * mem[_809 + mem[_809]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1
            mem[_809 + ceil32(return_data.size)] = _817
            require return_data.size >= _813 + (32 * _817) + 32
            mem[_809 + ceil32(return_data.size) + 32 len 32 * _817] = mem[_809 + _813 + 32 len 32 * _817]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _817
            mem[mem[64] + 64 len 32 * _817] = mem[_809 + ceil32(return_data.size) + 32 len 32 * _817]
            return Array(len=_817, data=mem[mem[64] + 64 len 32 * _817])
        if 1 > !(ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18 / 2):
            revert with 0, 17
        s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18 / 2) + 1
        t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18
        while s < t:
            if not s:
                revert with 0, 18
            if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18 / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] * arg2 / 1000000000000 * 10^18 / s) + s / 2
            t = s
            continue 
        if not t:
            revert with 0, 18
        if ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / t < ext_call.return_data[50 len 14]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        u = ceil32(return_data.size) + 292
        while idx < 2:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _558 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _560 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _560
        require return_data.size >= _558 + (32 * _560) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _560] = mem[ceil32(return_data.size) + _558 + 224 len 32 * _560]
        if 1 >= _560:
            revert with 0, 50
        _804 = mem[(2 * ceil32(return_data.size)) + 256]
        if (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 'no profits'
        if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 17
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18)
        emit Test(mem[mem[64]]);
        if _804 - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18) < stor5:
            revert with 0, 'profits not enough'
        if 99999999 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 4] = adminAddress
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(veeAddress)
        call veeAddress.0x23b872dd with:
             gas gas_remaining wei
            args adminAddress, this.address, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _858 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_858] == bool(mem[_858])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _868 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_868] >= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
            mem[mem[64] + 4] = adminAddress
            require ext_code.size(veeAddress)
            staticcall veeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args adminAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_880] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'blance insufficient'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])
            mem[mem[64] + 36] = stor5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            u = mem[64] + 196
            while idx < 2:
                mem[u] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = adminAddress
            mem[mem[64] + 132] = block.timestamp + 99999999
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _976 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _986 = mem[_976]
            require mem[_976] <= test266151307()
            require _976 + mem[_976] + 31 < _976 + return_data.size
            _992 = mem[_976 + mem[_976]]
            if mem[_976 + mem[_976]] > test266151307():
                revert with 0, 65
            if _976 + ceil32(return_data.size) + ceil32(32 * mem[_976 + mem[_976]]) + 1 > test266151307() or ceil32(32 * mem[_976 + mem[_976]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _976 + ceil32(return_data.size) + ceil32(32 * mem[_976 + mem[_976]]) + 1
            mem[_976 + ceil32(return_data.size)] = _992
            require return_data.size >= _986 + (32 * _992) + 32
            mem[_976 + ceil32(return_data.size) + 32 len 32 * _992] = mem[_976 + _986 + 32 len 32 * _992]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _992
            mem[mem[64] + 64 len 32 * _992] = mem[_976 + ceil32(return_data.size) + 32 len 32 * _992]
            return Array(len=_992, data=mem[mem[64] + 64 len 32 * _992])
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = 10000000000 * 10^18
        require ext_code.size(veeAddress)
        call veeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 10000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _881 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_881] == bool(mem[_881])
        mem[mem[64] + 4] = adminAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0x70a08231 with:
                gas gas_remaining wei
               args adminAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _900 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_900] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'blance insufficient'
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])
        mem[mem[64] + 36] = stor5
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        u = mem[64] + 196
        while idx < 2:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = adminAddress
        mem[mem[64] + 132] = block.timestamp + 99999999
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _977 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _987 = mem[_977]
        require mem[_977] <= test266151307()
        require _977 + mem[_977] + 31 < _977 + return_data.size
        _993 = mem[_977 + mem[_977]]
        if mem[_977 + mem[_977]] > test266151307():
            revert with 0, 65
        if _977 + ceil32(return_data.size) + ceil32(32 * mem[_977 + mem[_977]]) + 1 > test266151307() or ceil32(32 * mem[_977 + mem[_977]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _977 + ceil32(return_data.size) + ceil32(32 * mem[_977 + mem[_977]]) + 1
        mem[_977 + ceil32(return_data.size)] = _993
        require return_data.size >= _987 + (32 * _993) + 32
        mem[_977 + ceil32(return_data.size) + 32 len 32 * _993] = mem[_977 + _987 + 32 len 32 * _993]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _993
        mem[mem[64] + 64 len 32 * _993] = mem[_977 + ceil32(return_data.size) + 32 len 32 * _993]
        return Array(len=_993, data=mem[mem[64] + 64 len 32 * _993])
    if ext_call.return_data[18 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] and arg2 > -1 / ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18 <= 3:
        if not ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18:
            revert with 0, 18
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] < ext_call.return_data[18 len 14]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(routerAddress)
        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _289 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _292 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _292
        require return_data.size >= _289 + (32 * _292) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _292] = mem[ceil32(return_data.size) + _289 + 224 len 32 * _292]
        if 1 >= _292:
            revert with 0, 50
        _554 = mem[(2 * ceil32(return_data.size)) + 256]
        if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 'no profits'
        if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 17
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18)
        emit Test(mem[mem[64]]);
        if _554 - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18) < stor5:
            revert with 0, 'profits not enough'
        if 99999999 > !block.timestamp:
            revert with 0, 17
        mem[mem[64] + 4] = adminAddress
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(veeAddress)
        call veeAddress.0x23b872dd with:
             gas gas_remaining wei
            args adminAddress, this.address, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_587] == bool(mem[_587])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _600 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_600] >= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
            mem[mem[64] + 4] = adminAddress
            require ext_code.size(veeAddress)
            staticcall veeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args adminAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _624 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_624] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'blance insufficient'
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])
            mem[mem[64] + 36] = stor5
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = adminAddress
            mem[mem[64] + 132] = block.timestamp + 99999999
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _810 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _814 = mem[_810]
            require mem[_810] <= test266151307()
            require _810 + mem[_810] + 31 < _810 + return_data.size
            _818 = mem[_810 + mem[_810]]
            if mem[_810 + mem[_810]] > test266151307():
                revert with 0, 65
            if _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1 > test266151307() or ceil32(32 * mem[_810 + mem[_810]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1
            mem[_810 + ceil32(return_data.size)] = _818
            require return_data.size >= _814 + (32 * _818) + 32
            mem[_810 + ceil32(return_data.size) + 32 len 32 * _818] = mem[_810 + _814 + 32 len 32 * _818]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _818
            mem[mem[64] + 64 len 32 * _818] = mem[_810 + ceil32(return_data.size) + 32 len 32 * _818]
            return Array(len=_818, data=mem[mem[64] + 64 len 32 * _818])
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = 10000000000 * 10^18
        require ext_code.size(veeAddress)
        call veeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 10000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _625 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_625] == bool(mem[_625])
        mem[mem[64] + 4] = adminAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0x70a08231 with:
                gas gas_remaining wei
               args adminAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _652 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_652] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'blance insufficient'
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 36] = stor5
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = adminAddress
        mem[mem[64] + 132] = block.timestamp + 99999999
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _811 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _815 = mem[_811]
        require mem[_811] <= test266151307()
        require _811 + mem[_811] + 31 < _811 + return_data.size
        _819 = mem[_811 + mem[_811]]
        if mem[_811 + mem[_811]] > test266151307():
            revert with 0, 65
        if _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1 > test266151307() or ceil32(32 * mem[_811 + mem[_811]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1
        mem[_811 + ceil32(return_data.size)] = _819
        require return_data.size >= _815 + (32 * _819) + 32
        mem[_811 + ceil32(return_data.size) + 32 len 32 * _819] = mem[_811 + _815 + 32 len 32 * _819]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _819
        mem[mem[64] + 64 len 32 * _819] = mem[_811 + ceil32(return_data.size) + 32 len 32 * _819]
        return Array(len=_819, data=mem[mem[64] + 64 len 32 * _819])
    if 1 > !(ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18 / 2):
        revert with 0, 17
    s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18 / 2) + 1
    t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18
    while s < t:
        if not s:
            revert with 0, 18
        if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18 / s > !s:
            revert with 0, 17
        s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] * arg2 / 1000000000000 * 10^18 / s) + s / 2
        t = s
        continue 
    if not t:
        revert with 0, 18
    if ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / t < ext_call.return_data[18 len 14]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    u = ceil32(return_data.size) + 292
    while idx < 2:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _559 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _561 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _561
    require return_data.size >= _559 + (32 * _561) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _561] = mem[ceil32(return_data.size) + _559 + 224 len 32 * _561]
    if 1 >= _561:
        revert with 0, 50
    _807 = mem[(2 * ceil32(return_data.size)) + 256]
    if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
        revert with 0, 'no profits'
    if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
        revert with 0, 17
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18)
    emit Test(mem[mem[64]]);
    if _807 - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18) < stor5:
        revert with 0, 'profits not enough'
    if 99999999 > !block.timestamp:
        revert with 0, 17
    mem[mem[64] + 4] = adminAddress
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(veeAddress)
    call veeAddress.0x23b872dd with:
         gas gas_remaining wei
        args adminAddress, this.address, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _861 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_861] == bool(mem[_861])
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    require ext_code.size(veeAddress)
    staticcall veeAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _869 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_869] >= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
        mem[mem[64] + 4] = adminAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0x70a08231 with:
                gas gas_remaining wei
               args adminAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _882 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_882] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'blance insufficient'
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])
        mem[mem[64] + 36] = stor5
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 128
        u = mem[64] + 196
        while idx < 2:
            mem[u] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = adminAddress
        mem[mem[64] + 132] = block.timestamp + 99999999
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _978 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _990 = mem[_978]
        require mem[_978] <= test266151307()
        require _978 + mem[_978] + 31 < _978 + return_data.size
        _994 = mem[_978 + mem[_978]]
        if mem[_978 + mem[_978]] > test266151307():
            revert with 0, 65
        if _978 + ceil32(return_data.size) + ceil32(32 * mem[_978 + mem[_978]]) + 1 > test266151307() or ceil32(32 * mem[_978 + mem[_978]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _978 + ceil32(return_data.size) + ceil32(32 * mem[_978 + mem[_978]]) + 1
        mem[_978 + ceil32(return_data.size)] = _994
        require return_data.size >= _990 + (32 * _994) + 32
        mem[_978 + ceil32(return_data.size) + 32 len 32 * _994] = mem[_978 + _990 + 32 len 32 * _994]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _994
        mem[mem[64] + 64 len 32 * _994] = mem[_978 + ceil32(return_data.size) + 32 len 32 * _994]
        return Array(len=_994, data=mem[mem[64] + 64 len 32 * _994])
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = 10000000000 * 10^18
    require ext_code.size(veeAddress)
    call veeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 10000000000 * 10^18
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _883 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_883] == bool(mem[_883])
    mem[mem[64] + 4] = adminAddress
    require ext_code.size(veeAddress)
    staticcall veeAddress.0x70a08231 with:
            gas gas_remaining wei
           args adminAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _901 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_901] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'blance insufficient'
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])
    mem[mem[64] + 36] = stor5
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    u = mem[64] + 196
    while idx < 2:
        mem[u] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    mem[mem[64] + 100] = adminAddress
    mem[mem[64] + 132] = block.timestamp + 99999999
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]), stor5, Array(len=2, data=mem[mem[64] + 196 len 64]), adminAddress, block.timestamp + 99999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _979 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _991 = mem[_979]
    require mem[_979] <= test266151307()
    require _979 + mem[_979] + 31 < _979 + return_data.size
    _995 = mem[_979 + mem[_979]]
    if mem[_979 + mem[_979]] > test266151307():
        revert with 0, 65
    if _979 + ceil32(return_data.size) + ceil32(32 * mem[_979 + mem[_979]]) + 1 > test266151307() or ceil32(32 * mem[_979 + mem[_979]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _979 + ceil32(return_data.size) + ceil32(32 * mem[_979 + mem[_979]]) + 1
    mem[_979 + ceil32(return_data.size)] = _995
    require return_data.size >= _991 + (32 * _995) + 32
    mem[_979 + ceil32(return_data.size) + 32 len 32 * _995] = mem[_979 + _991 + 32 len 32 * _995]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _995
    mem[mem[64] + 64 len 32 * _995] = mem[_979 + ceil32(return_data.size) + 32 len 32 * _995]
    return Array(len=_995, data=mem[mem[64] + 64 len 32 * _995])
}



}
