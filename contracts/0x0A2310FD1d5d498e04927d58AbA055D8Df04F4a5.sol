contract main {




// =====================  Runtime code  =====================


#
#  - sub_613faf07(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xf8f181d466d44974257f9ccf0ce8398b7e059054, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_09c74156(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = cd[100] + 36
    t = 128
    idx = 0
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = ceil32(32 * ('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[64] = ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 610
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 226] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 386] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 418] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 450] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 546] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 578] = 0
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162] = 1000
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 194] = 1000
    idx = 0
    while idx < cd[164]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).getTokenHandlerSupport(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_220] == bool(mem[_220])
        if mem[_220]:
            mem[mem[64] + 36] = idx
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).getUserIntraHandlerAssetWithInterest(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _246 = mem[_237 + 32]
            if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] > !mem[_237]:
                revert with 'NH{q', 17
            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] + mem[_237]
            if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354] > !_246:
                revert with 'NH{q', 17
            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354] = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354] + _246
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _258 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_258))
            staticcall address(_258).getUserIntraBorrowAmount(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_261]
            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = mem[_261]
            if _262:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getTokenHandlerPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _270 = mem[_268]
                if mem[_268] and mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] > -1 / mem[_268]:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 418] = mem[_268] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98]
                if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 386] < _270 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98]:
                    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 386] = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 418]
                    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98]
                    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162] = idx
                    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] = _270
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 1000 == mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162]:
        return 0, 0, 1000, 1000
    idx = 0
    while idx < cd[164]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).getTokenHandlerSupport(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_292] == bool(mem[_292])
        if mem[_292]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _302 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_302))
            staticcall address(_302).getUserIntraDepositAmount(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _308 = mem[_307]
            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = mem[_307]
            if _308:
                _309 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162]
                _310 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130]
                _311 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354]
                _312 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322]
                if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322]:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = _309
                mem[mem[64] + 68] = _310
                mem[mem[64] + 100] = idx
                mem[mem[64] + 132] = 10^18 * _311 / _312
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getMaxLiquidationReward(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                        gas gas_remaining wei
                       args address(cd[4]), _309, _310, idx, 10^18 * _311 / _312
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _316 = mem[_315]
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] = mem[_315]
                if _316 and mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] > -1 / _316:
                    revert with 'NH{q', 17
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 450] = _316 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18
                if _316 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18 and mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] > -1 / _316 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18:
                    revert with 'NH{q', 17
                if _316 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354]:
                    revert with 'NH{q', 18
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] = 10^18 * _316 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 322] / 10^18 / mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 354]
                mem[mem[64] + 4] = idx
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getTokenHandlerPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _323 = mem[_322]
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] = mem[_322]
                if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not _323:
                    revert with 'NH{q', 18
                mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 546] = 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323
                if 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 and mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] > -1 / 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323:
                    revert with 'NH{q', 17
                if mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] and mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] > -1 / mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258]:
                    revert with 'NH{q', 17
                if 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] / 10^18 > mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18:
                    if 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] / 10^18 < mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18:
                        revert with 'NH{q', 17
                    if (10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] / 10^18) - (mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18) > mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 226]:
                        if 10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] / 10^18 < mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18:
                            revert with 'NH{q', 17
                        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 226] = (10^18 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 482] / _323 * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 514] / 10^18) - (mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 258] * mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 290] / 10^18)
                        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 194] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if 1000 == mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 194]:
        return 0, 0, 1000, 1000
    mem[mem[64] + 4] = address(cd[4])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).checkLiquidation(address arg1) with:
            gas gas_remaining wei
           args address(cd[4])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _293 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_293] == bool(mem[_293])
    _298 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 226]
    _299 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 162]
    _300 = mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 194]
    mem[mem[64]] = bool(mem[_293])
    mem[mem[64] + 64] = _299
    mem[mem[64] + 96] = _300
    return mem[mem[64]], _298, _299, _300
}



}
