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
            _240 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _242 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _242
            require return_data.size >= _240 + (32 * _242) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _242] = mem[ceil32(return_data.size) + _240 + 224 len 32 * _242]
            if 1 >= _242:
                revert with 0, 50
            _456 = mem[(2 * ceil32(return_data.size)) + 256]
            if (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
                revert with 0, 'no profits'
            if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
                revert with 0, 17
            mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18)
            emit Test(mem[mem[64]]);
            if _456 - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18) < stor5:
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
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_490] == bool(mem[_490])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = routerAddress
            require ext_code.size(veeAddress)
            staticcall veeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, routerAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _502 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_502] >= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) - Mask(112, 0, ext_call.return_data[32]):
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
                _664 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _668 = mem[_664]
                require mem[_664] <= test266151307()
                require _664 + mem[_664] + 31 < _664 + return_data.size
                _672 = mem[_664 + mem[_664]]
                if mem[_664 + mem[_664]] > test266151307():
                    revert with 0, 65
                if _664 + ceil32(return_data.size) + ceil32(32 * mem[_664 + mem[_664]]) + 1 > test266151307() or ceil32(32 * mem[_664 + mem[_664]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _664 + ceil32(return_data.size) + ceil32(32 * mem[_664 + mem[_664]]) + 1
                mem[_664 + ceil32(return_data.size)] = _672
                require return_data.size >= _668 + (32 * _672) + 32
                mem[_664 + ceil32(return_data.size) + 32 len 32 * _672] = mem[_664 + _668 + 32 len 32 * _672]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _672
                mem[mem[64] + 64 len 32 * _672] = mem[_664 + ceil32(return_data.size) + 32 len 32 * _672]
                return Array(len=_672, data=mem[mem[64] + 64 len 32 * _672])
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = 10000000000 * 10^18
            require ext_code.size(veeAddress)
            call veeAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, 10000000000 * 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_525] == bool(mem[_525])
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
            _665 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _669 = mem[_665]
            require mem[_665] <= test266151307()
            require _665 + mem[_665] + 31 < _665 + return_data.size
            _673 = mem[_665 + mem[_665]]
            if mem[_665 + mem[_665]] > test266151307():
                revert with 0, 65
            if _665 + ceil32(return_data.size) + ceil32(32 * mem[_665 + mem[_665]]) + 1 > test266151307() or ceil32(32 * mem[_665 + mem[_665]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _665 + ceil32(return_data.size) + ceil32(32 * mem[_665 + mem[_665]]) + 1
            mem[_665 + ceil32(return_data.size)] = _673
            require return_data.size >= _669 + (32 * _673) + 32
            mem[_665 + ceil32(return_data.size) + 32 len 32 * _673] = mem[_665 + _669 + 32 len 32 * _673]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _673
            mem[mem[64] + 64 len 32 * _673] = mem[_665 + ceil32(return_data.size) + 32 len 32 * _673]
            return Array(len=_673, data=mem[mem[64] + 64 len 32 * _673])
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
        _462 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _464 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _464
        require return_data.size >= _462 + (32 * _464) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _464] = mem[ceil32(return_data.size) + _462 + 224 len 32 * _464]
        if 1 >= _464:
            revert with 0, 50
        _660 = mem[(2 * ceil32(return_data.size)) + 256]
        if (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 17
        if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 'no profits'
        if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 17
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18)
        emit Test(mem[mem[64]]);
        if _660 - ((Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t * arg2) - (Mask(112, 0, ext_call.return_data[32]) * arg2) / 1000000000000 * 10^18) < stor5:
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
        _714 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_714] == bool(mem[_714])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _724 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_724] >= (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / t) - Mask(112, 0, ext_call.return_data[32]):
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
            _808 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _818 = mem[_808]
            require mem[_808] <= test266151307()
            require _808 + mem[_808] + 31 < _808 + return_data.size
            _824 = mem[_808 + mem[_808]]
            if mem[_808 + mem[_808]] > test266151307():
                revert with 0, 65
            if _808 + ceil32(return_data.size) + ceil32(32 * mem[_808 + mem[_808]]) + 1 > test266151307() or ceil32(32 * mem[_808 + mem[_808]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _808 + ceil32(return_data.size) + ceil32(32 * mem[_808 + mem[_808]]) + 1
            mem[_808 + ceil32(return_data.size)] = _824
            require return_data.size >= _818 + (32 * _824) + 32
            mem[_808 + ceil32(return_data.size) + 32 len 32 * _824] = mem[_808 + _818 + 32 len 32 * _824]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _824
            mem[mem[64] + 64 len 32 * _824] = mem[_808 + ceil32(return_data.size) + 32 len 32 * _824]
            return Array(len=_824, data=mem[mem[64] + 64 len 32 * _824])
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = 10000000000 * 10^18
        require ext_code.size(veeAddress)
        call veeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 10000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _735 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_735] == bool(mem[_735])
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
        _809 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _819 = mem[_809]
        require mem[_809] <= test266151307()
        require _809 + mem[_809] + 31 < _809 + return_data.size
        _825 = mem[_809 + mem[_809]]
        if mem[_809 + mem[_809]] > test266151307():
            revert with 0, 65
        if _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1 > test266151307() or ceil32(32 * mem[_809 + mem[_809]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _809 + ceil32(return_data.size) + ceil32(32 * mem[_809 + mem[_809]]) + 1
        mem[_809 + ceil32(return_data.size)] = _825
        require return_data.size >= _819 + (32 * _825) + 32
        mem[_809 + ceil32(return_data.size) + 32 len 32 * _825] = mem[_809 + _819 + 32 len 32 * _825]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _825
        mem[mem[64] + 64 len 32 * _825] = mem[_809 + ceil32(return_data.size) + 32 len 32 * _825]
        return Array(len=_825, data=mem[mem[64] + 64 len 32 * _825])
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
        _241 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _244 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _244
        require return_data.size >= _241 + (32 * _244) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _244] = mem[ceil32(return_data.size) + _241 + 224 len 32 * _244]
        if 1 >= _244:
            revert with 0, 50
        _458 = mem[(2 * ceil32(return_data.size)) + 256]
        if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 'no profits'
        if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
            revert with 0, 17
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18)
        emit Test(mem[mem[64]]);
        if _458 - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18) < stor5:
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
        _491 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_491] == bool(mem[_491])
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = routerAddress
        require ext_code.size(veeAddress)
        staticcall veeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _504 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_504] >= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) - Mask(112, 0, ext_call.return_data[0]):
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
            _666 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _670 = mem[_666]
            require mem[_666] <= test266151307()
            require _666 + mem[_666] + 31 < _666 + return_data.size
            _674 = mem[_666 + mem[_666]]
            if mem[_666 + mem[_666]] > test266151307():
                revert with 0, 65
            if _666 + ceil32(return_data.size) + ceil32(32 * mem[_666 + mem[_666]]) + 1 > test266151307() or ceil32(32 * mem[_666 + mem[_666]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _666 + ceil32(return_data.size) + ceil32(32 * mem[_666 + mem[_666]]) + 1
            mem[_666 + ceil32(return_data.size)] = _674
            require return_data.size >= _670 + (32 * _674) + 32
            mem[_666 + ceil32(return_data.size) + 32 len 32 * _674] = mem[_666 + _670 + 32 len 32 * _674]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _674
            mem[mem[64] + 64 len 32 * _674] = mem[_666 + ceil32(return_data.size) + 32 len 32 * _674]
            return Array(len=_674, data=mem[mem[64] + 64 len 32 * _674])
        mem[mem[64] + 4] = routerAddress
        mem[mem[64] + 36] = 10000000000 * 10^18
        require ext_code.size(veeAddress)
        call veeAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, 10000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _527 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_527] == bool(mem[_527])
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
        _667 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _671 = mem[_667]
        require mem[_667] <= test266151307()
        require _667 + mem[_667] + 31 < _667 + return_data.size
        _675 = mem[_667 + mem[_667]]
        if mem[_667 + mem[_667]] > test266151307():
            revert with 0, 65
        if _667 + ceil32(return_data.size) + ceil32(32 * mem[_667 + mem[_667]]) + 1 > test266151307() or ceil32(32 * mem[_667 + mem[_667]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _667 + ceil32(return_data.size) + ceil32(32 * mem[_667 + mem[_667]]) + 1
        mem[_667 + ceil32(return_data.size)] = _675
        require return_data.size >= _671 + (32 * _675) + 32
        mem[_667 + ceil32(return_data.size) + 32 len 32 * _675] = mem[_667 + _671 + 32 len 32 * _675]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _675
        mem[mem[64] + 64 len 32 * _675] = mem[_667 + ceil32(return_data.size) + 32 len 32 * _675]
        return Array(len=_675, data=mem[mem[64] + 64 len 32 * _675])
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
    _463 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _465 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0])) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _465
    require return_data.size >= _463 + (32 * _465) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _465] = mem[ceil32(return_data.size) + _463 + 224 len 32 * _465]
    if 1 >= _465:
        revert with 0, 50
    _663 = mem[(2 * ceil32(return_data.size)) + 256]
    if (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if mem[(2 * ceil32(return_data.size)) + 256] <= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
        revert with 0, 'no profits'
    if mem[(2 * ceil32(return_data.size)) + 256] < (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18:
        revert with 0, 17
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256] - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18)
    emit Test(mem[mem[64]]);
    if _663 - ((Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t * arg2) - (Mask(112, 0, ext_call.return_data[0]) * arg2) / 1000000000000 * 10^18) < stor5:
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
    _717 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_717] == bool(mem[_717])
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = routerAddress
    require ext_code.size(veeAddress)
    staticcall veeAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, routerAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _725 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_725] >= (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / t) - Mask(112, 0, ext_call.return_data[0]):
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
        _810 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _822 = mem[_810]
        require mem[_810] <= test266151307()
        require _810 + mem[_810] + 31 < _810 + return_data.size
        _826 = mem[_810 + mem[_810]]
        if mem[_810 + mem[_810]] > test266151307():
            revert with 0, 65
        if _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1 > test266151307() or ceil32(32 * mem[_810 + mem[_810]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _810 + ceil32(return_data.size) + ceil32(32 * mem[_810 + mem[_810]]) + 1
        mem[_810 + ceil32(return_data.size)] = _826
        require return_data.size >= _822 + (32 * _826) + 32
        mem[_810 + ceil32(return_data.size) + 32 len 32 * _826] = mem[_810 + _822 + 32 len 32 * _826]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _826
        mem[mem[64] + 64 len 32 * _826] = mem[_810 + ceil32(return_data.size) + 32 len 32 * _826]
        return Array(len=_826, data=mem[mem[64] + 64 len 32 * _826])
    mem[mem[64] + 4] = routerAddress
    mem[mem[64] + 36] = 10000000000 * 10^18
    require ext_code.size(veeAddress)
    call veeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 10000000000 * 10^18
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _737 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_737] == bool(mem[_737])
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
    _811 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _823 = mem[_811]
    require mem[_811] <= test266151307()
    require _811 + mem[_811] + 31 < _811 + return_data.size
    _827 = mem[_811 + mem[_811]]
    if mem[_811 + mem[_811]] > test266151307():
        revert with 0, 65
    if _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1 > test266151307() or ceil32(32 * mem[_811 + mem[_811]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _811 + ceil32(return_data.size) + ceil32(32 * mem[_811 + mem[_811]]) + 1
    mem[_811 + ceil32(return_data.size)] = _827
    require return_data.size >= _823 + (32 * _827) + 32
    mem[_811 + ceil32(return_data.size) + 32 len 32 * _827] = mem[_811 + _823 + 32 len 32 * _827]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _827
    mem[mem[64] + 64 len 32 * _827] = mem[_811 + ceil32(return_data.size) + 32 len 32 * _827]
    return Array(len=_827, data=mem[mem[64] + 64 len 32 * _827])
}



}
